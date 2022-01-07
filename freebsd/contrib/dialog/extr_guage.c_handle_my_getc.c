
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ input; } ;
typedef int MY_OBJ ;
typedef TYPE_1__ DIALOG_CALLBACK ;


 int DLG_EXIT_OK ;
 int ERR ;
 int FALSE ;
 int TRUE ;
 int handle_input (TYPE_1__*) ;
 scalar_t__ valid (int *) ;

__attribute__((used)) static bool
handle_my_getc(DIALOG_CALLBACK * cb, int ch, int fkey, int *result)
{
    bool status = TRUE;

    *result = DLG_EXIT_OK;
    if (cb != 0) {
 if (!fkey && (ch == ERR)) {
     (void) handle_input(cb);

     status = (valid((MY_OBJ *) cb) && (cb->input != 0));
 }
    } else {
 status = FALSE;
    }
    return status;
}
