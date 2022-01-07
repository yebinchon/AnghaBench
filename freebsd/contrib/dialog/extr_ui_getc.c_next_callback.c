
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* getc_callbacks; TYPE_1__* getc_redirect; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ DIALOG_CALLBACK ;


 TYPE_4__ dialog_state ;

__attribute__((used)) static DIALOG_CALLBACK *
next_callback(DIALOG_CALLBACK * p)
{
    if ((p = dialog_state.getc_redirect) != 0) {
 p = p->next;
    } else {
 p = dialog_state.getc_callbacks;
    }
    return p;
}
