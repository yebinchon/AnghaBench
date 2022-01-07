
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int chtype ;
struct TYPE_4__ {int width; int dialog; scalar_t__ height; } ;
typedef TYPE_1__ DIALOG_MIXEDGAUGE ;


 int A_REVERSE ;
 int MARGIN ;
 int dlg_attroff (int ,int) ;
 int dlg_attrset (int ,int) ;
 int dlg_trace_win (int ) ;
 int gauge_attr ;
 int myprint_status (TYPE_1__*) ;
 int title_attr ;
 int waddch (int ,int) ;
 int winch (int ) ;
 int wmove (int ,scalar_t__,int) ;
 int wprintw (int ,char*,int) ;

__attribute__((used)) static void
dlg_update_mixedgauge(DIALOG_MIXEDGAUGE * dlg, int percent)
{
    int i, x;






    (void) wmove(dlg->dialog, dlg->height - 3, 4);
    dlg_attrset(dlg->dialog, gauge_attr);

    for (i = 0; i < (dlg->width - 2 * (3 + MARGIN)); i++)
 (void) waddch(dlg->dialog, ' ');

    (void) wmove(dlg->dialog, dlg->height - 3, (dlg->width / 2) - 2);
    (void) wprintw(dlg->dialog, "%3d%%", percent);






    x = (percent * (dlg->width - 2 * (3 + MARGIN))) / 100;
    if ((title_attr & A_REVERSE) != 0) {
 dlg_attroff(dlg->dialog, A_REVERSE);
    } else {
 dlg_attrset(dlg->dialog, A_REVERSE);
    }
    (void) wmove(dlg->dialog, dlg->height - 3, 4);
    for (i = 0; i < x; i++) {
 chtype ch = winch(dlg->dialog);
 if (title_attr & A_REVERSE) {
     ch &= ~A_REVERSE;
 }
 (void) waddch(dlg->dialog, ch);
    }
    myprint_status(dlg);
    dlg_trace_win(dlg->dialog);
}
