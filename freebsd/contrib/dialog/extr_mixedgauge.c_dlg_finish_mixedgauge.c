
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dialog; } ;
typedef TYPE_1__ DIALOG_MIXEDGAUGE ;


 int FALSE ;
 int curs_set (int) ;
 int dlg_del_window (int ) ;
 int nodelay (int ,int ) ;
 int stdscr ;
 int wrefresh (int ) ;

__attribute__((used)) static int
dlg_finish_mixedgauge(DIALOG_MIXEDGAUGE * dlg, int status)
{
    (void) wrefresh(dlg->dialog);



    curs_set(1);
    dlg_del_window(dlg->dialog);
    return status;
}
