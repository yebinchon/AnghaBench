
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLG_TRACE (char*) ;
 int basecode ;

void
dlg_mouse_setcode(int code)
{
    basecode = code;
    DLG_TRACE(("# mouse_setcode %d\n", code));
}
