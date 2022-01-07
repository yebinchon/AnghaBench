
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* getc_callbacks; } ;
struct TYPE_4__ {int win; struct TYPE_4__* next; } ;
typedef TYPE_1__ DIALOG_CALLBACK ;


 int WTIMEOUT_VAL ;
 TYPE_3__ dialog_state ;
 int wtimeout (int ,int ) ;

void
dlg_add_callback(DIALOG_CALLBACK * p)
{
    p->next = dialog_state.getc_callbacks;
    dialog_state.getc_callbacks = p;
    wtimeout(p->win, WTIMEOUT_VAL);
}
