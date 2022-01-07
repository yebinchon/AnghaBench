
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_8__ {scalar_t__ getc_callbacks; TYPE_1__* all_windows; } ;
struct TYPE_7__ {scalar_t__ keep_window; } ;
struct TYPE_6__ {scalar_t__ shadow; int * normal; struct TYPE_6__* next; } ;
typedef TYPE_1__ DIALOG_WINDOWS ;


 int del_subwindows (int *) ;
 int delwin (int *) ;
 TYPE_5__ dialog_state ;
 TYPE_4__ dialog_vars ;
 int dlg_unregister_window (int *) ;
 int doupdate () ;
 int erase_childs_shadow (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int * stdscr ;
 int touchwin (int *) ;
 int wnoutrefresh (int *) ;

void
dlg_del_window(WINDOW *win)
{
    DIALOG_WINDOWS *p, *q, *r;




    if (dialog_vars.keep_window)
 return;





    if (dialog_state.getc_callbacks != 0) {
 touchwin(stdscr);
 wnoutrefresh(stdscr);
    }

    for (p = dialog_state.all_windows, q = r = 0; p != 0; r = p, p = p->next) {
 if (p->normal == win) {
     q = p;
     if (r == 0) {
  dialog_state.all_windows = p->next;
     } else {
  r->next = p->next;
     }
 } else {
     if (p->shadow != 0) {
  touchwin(p->shadow);
  wnoutrefresh(p->shadow);
     }
     touchwin(p->normal);
     wnoutrefresh(p->normal);
 }
    }

    if (q) {
 if (dialog_state.all_windows != 0)
     erase_childs_shadow(q);
 del_subwindows(q->normal);
 dlg_unregister_window(q->normal);
 delwin(q->normal);
 free(q);
    }
    doupdate();
}
