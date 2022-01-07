
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int items; } ;
typedef TYPE_1__ For ;


 int For_Free (TYPE_1__*) ;
 int For_Iterate ;
 int Parse_SetInput (int *,int,int,int ,TYPE_1__*) ;
 TYPE_1__* accumFor ;
 scalar_t__ strlist_num (int *) ;

void
For_Run(int lineno)
{
    For *arg;

    arg = accumFor;
    accumFor = ((void*)0);

    if (strlist_num(&arg->items) == 0) {

        For_Free(arg);
        return;
    }

    Parse_SetInput(((void*)0), lineno, -1, For_Iterate, arg);
}
