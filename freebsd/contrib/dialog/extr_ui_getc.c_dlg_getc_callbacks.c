
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* getc_callbacks; } ;
struct TYPE_5__ {int (* handle_getc ) (TYPE_1__*,int,int,int*) ;scalar_t__ input_ready; struct TYPE_5__* next; } ;
typedef TYPE_1__ DIALOG_CALLBACK ;


 int FALSE ;
 scalar_t__ check_inputs () ;
 TYPE_4__ dialog_state ;
 int dlg_remove_callback (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int,int,int*) ;

int
dlg_getc_callbacks(int ch, int fkey, int *result)
{
    int code = FALSE;
    DIALOG_CALLBACK *p, *q;

    if ((p = dialog_state.getc_callbacks) != 0) {
 if (check_inputs() >= 0) {
     do {
  q = p->next;
  if (p->input_ready) {
      if (!(p->handle_getc(p, ch, fkey, result))) {
   dlg_remove_callback(p);
      }
  }
     } while ((p = q) != 0);
 }
 code = (dialog_state.getc_callbacks != 0);
    }
    return code;
}
