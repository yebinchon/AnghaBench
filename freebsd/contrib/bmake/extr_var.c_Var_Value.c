
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; } ;
typedef TYPE_1__ Var ;
typedef int GNode ;


 char* Buf_GetAll (int *,int *) ;
 int FALSE ;
 int FIND_CMD ;
 int FIND_ENV ;
 int FIND_GLOBAL ;
 TYPE_1__* VarFind (char const*,int *,int) ;
 scalar_t__ VarFreeEnv (TYPE_1__*,int ) ;

char *
Var_Value(const char *name, GNode *ctxt, char **frp)
{
    Var *v;

    v = VarFind(name, ctxt, FIND_ENV | FIND_GLOBAL | FIND_CMD);
    *frp = ((void*)0);
    if (v != ((void*)0)) {
 char *p = (Buf_GetAll(&v->val, ((void*)0)));
 if (VarFreeEnv(v, FALSE))
     *frp = p;
 return p;
    } else {
 return ((void*)0);
    }
}
