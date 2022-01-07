
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int commands; } ;
typedef int GNode ;


 int Lst_AtEnd (int ,void*) ;
 int VARF_WANTRES ;
 void* Var_Subst (int *,char*,int *,int ) ;
 TYPE_1__* postCommands ;

__attribute__((used)) static int
JobSaveCommand(void *cmd, void *gn)
{
    cmd = Var_Subst(((void*)0), (char *)cmd, (GNode *)gn, VARF_WANTRES);
    (void)Lst_AtEnd(postCommands->commands, cmd);
    return(0);
}
