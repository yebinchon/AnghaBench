
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_4__ {TYPE_1__* all_subwindows; } ;
struct TYPE_3__ {int * normal; int * shadow; struct TYPE_3__* next; } ;
typedef TYPE_1__ DIALOG_WINDOWS ;


 TYPE_2__ dialog_state ;

WINDOW *
dlg_wgetparent(WINDOW *win)
{

    WINDOW *result = 0;
    DIALOG_WINDOWS *p;

    for (p = dialog_state.all_subwindows; p != 0; p = p->next) {
 if (p->shadow == win) {
     result = p->normal;
     break;
 }
    }
    return result;
}
