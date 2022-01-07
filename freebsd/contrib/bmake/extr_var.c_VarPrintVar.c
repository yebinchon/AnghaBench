
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int val; } ;
typedef TYPE_1__ Var ;


 char* Buf_GetAll (int *,int *) ;
 int debug_file ;
 int fprintf (int ,char*,char*,char*) ;

__attribute__((used)) static void
VarPrintVar(void *vp)
{
    Var *v = (Var *)vp;
    fprintf(debug_file, "%-16s = %s\n", v->name, Buf_GetAll(&v->val, ((void*)0)));
}
