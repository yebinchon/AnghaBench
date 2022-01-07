
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* getc_callbacks; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ DIALOG_CALLBACK ;


 int FALSE ;
 int TRUE ;
 TYPE_3__ dialog_state ;

__attribute__((used)) static bool
valid_callback(DIALOG_CALLBACK * cb)
{
    bool valid = FALSE;
    DIALOG_CALLBACK *p;
    for (p = dialog_state.getc_callbacks; p != 0; p = p->next) {
 if (p == cb) {
     valid = TRUE;
     break;
 }
    }
    return valid;
}
