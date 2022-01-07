
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_5__ {TYPE_1__* all_subwindows; } ;
struct TYPE_4__ {struct TYPE_4__* next; int shadow; int * normal; } ;
typedef TYPE_1__ DIALOG_WINDOWS ;


 int delwin (int ) ;
 TYPE_3__ dialog_state ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void
del_subwindows(WINDOW *parent)
{
    DIALOG_WINDOWS *p = dialog_state.all_subwindows;
    DIALOG_WINDOWS *q = 0;
    DIALOG_WINDOWS *r;

    while (p != 0) {
 if (p->normal == parent) {
     delwin(p->shadow);
     r = p->next;
     if (q == 0) {
  dialog_state.all_subwindows = r;
     } else {
  q->next = r;
     }
     free(p);
     p = r;
 } else {
     q = p;
     p = p->next;
 }
    }
}
