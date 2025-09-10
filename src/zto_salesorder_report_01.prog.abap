*&---------------------------------------------------------------------*
*& Report ZTO_SALESORDER_REPORT_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zto_salesorder_report_01.

DATA : gs_vbak TYPE vbak,
       gt_vbak TYPE TABLE OF vbak.

SELECTION-SCREEN BEGIN OF BLOCK a1 WITH FRAME TITLE TEXT-001 .
SELECT-OPTIONS credate FOR gs_vbak-erdat .
*<<!nav>>SELECT-OPTIONS<<!/nav>> S_DATE1 FOR SY-DATUM <<!nav>>POSITION(5,3)<<!/nav>>.
SELECTION-SCREEN END OF BLOCK a1.

SELECTION-SCREEN BEGIN OF BLOCK a2 WITH FRAME TITLE TEXT-002 .
PARAMETERS : p_creby TYPE vbak-ernam.
SELECTION-SCREEN END OF BLOCK a2.

START-OF-SELECTION.
