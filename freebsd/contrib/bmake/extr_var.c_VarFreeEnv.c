
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int val; struct TYPE_4__* name; } ;
typedef TYPE_1__ Var ;
typedef int Boolean ;


 int Buf_Destroy (int *,int ) ;
 int FALSE ;
 int TRUE ;
 int VAR_FROM_ENV ;
 int free (TYPE_1__*) ;

__attribute__((used)) static Boolean
VarFreeEnv(Var *v, Boolean destroy)
{
    if ((v->flags & VAR_FROM_ENV) == 0)
 return FALSE;
    free(v->name);
    Buf_Destroy(&v->val, destroy);
    free(v);
    return TRUE;
}
