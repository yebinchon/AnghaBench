
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;

int
dlg_check_scrolled(int key, int last, int page, bool * show, int *offset)
{
    int code = 0;

    *show = FALSE;

    switch (key) {
    case 131:
 if (*offset > 0) {
     *offset = 0;
     *show = TRUE;
 }
 break;
    case 130:
 if (*offset < last) {
     *offset = last;
     *show = TRUE;
 }
 break;
    case 132:
 if (*offset > 0) {
     --(*offset);
     *show = TRUE;
 }
 break;
    case 133:
 if (*offset < last) {
     ++(*offset);
     *show = TRUE;
 }
 break;
    case 128:
 if (*offset > 0) {
     *offset -= page;
     if (*offset < 0)
  *offset = 0;
     *show = TRUE;
 }
 break;
    case 129:
 if (*offset < last) {
     *offset += page;
     if (*offset > last)
  *offset = last;
     *show = TRUE;
 }
 break;
    default:
 code = -1;
 break;
    }
    return code;
}
