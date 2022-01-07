
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_6__ {scalar_t__ use_shadow; } ;
struct TYPE_5__ {int * shadow; } ;
typedef TYPE_1__ DIALOG_WINDOWS ;


 int SHADOW_COLS ;
 int SHADOW_ROWS ;
 TYPE_4__ dialog_state ;
 int dlg_ctl_size (int,int) ;
 int draw_childs_shadow (TYPE_1__*) ;
 TYPE_1__* find_window (int *) ;
 int mvwin (int *,int,int) ;
 int refresh () ;
 int wresize (int *,int,int) ;

void
dlg_move_window(WINDOW *win, int height, int width, int y, int x)
{
    DIALOG_WINDOWS *p;

    if (win != 0) {
 dlg_ctl_size(height, width);

 if ((p = find_window(win)) != 0) {
     (void) wresize(win, height, width);
     (void) mvwin(win, y, x);
     (void) refresh();




 }
    }
}
