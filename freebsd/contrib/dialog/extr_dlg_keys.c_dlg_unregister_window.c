
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_4__ {scalar_t__ is_function_key; struct TYPE_4__* binding; struct TYPE_4__* link; int * win; } ;
typedef TYPE_1__ LIST_BINDINGS ;


 TYPE_1__* all_bindings ;
 int free (TYPE_1__*) ;

void
dlg_unregister_window(WINDOW *win)
{
    LIST_BINDINGS *p, *q;

    for (p = all_bindings, q = 0; p != 0; p = p->link) {
 if (p->win == win) {
     if (q != 0) {
  q->link = p->link;
     } else {
  all_bindings = p->link;
     }

     if (p->binding[1].is_function_key < 0)
  free(p->binding);
     free(p);
     dlg_unregister_window(win);
     break;
 }
 q = p;
    }
}
