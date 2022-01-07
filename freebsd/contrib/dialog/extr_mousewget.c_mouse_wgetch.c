
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int code; int x; int y; int X; int step_x; int mode; } ;
typedef TYPE_1__ mseRegion ;
typedef int WINDOW ;
struct TYPE_7__ {int y; int x; } ;
typedef TYPE_2__ MEVENT ;


 int DLGK_MOUSE (int) ;
 int DLG_TRACE (char*) ;
 scalar_t__ ERR ;
 int FALSE ;
 int KEY_MOUSE ;
 int TRUE ;
 int beep () ;
 int dlg_getc (int *,int*) ;
 TYPE_1__* dlg_mouse_bigregion (int,int) ;
 TYPE_1__* dlg_mouse_region (int,int) ;
 scalar_t__ getbegx (int *) ;
 scalar_t__ getbegy (int *) ;
 scalar_t__ getmouse (TYPE_2__*) ;

__attribute__((used)) static int
mouse_wgetch(WINDOW *win, int *fkey, bool ignore_errs)
{
    int mouse_err = FALSE;
    int key;

    do {

 key = dlg_getc(win, fkey);
    } while (ignore_errs && mouse_err);

    return key;
}
