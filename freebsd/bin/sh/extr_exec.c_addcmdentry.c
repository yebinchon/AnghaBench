
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func; } ;
struct tblentry {scalar_t__ cmdtype; int special; TYPE_1__ param; } ;
struct cmdentry {scalar_t__ cmdtype; int special; TYPE_1__ u; } ;


 scalar_t__ CMDFUNCTION ;
 int INTOFF ;
 int INTON ;
 struct tblentry* cmdlookup (char const*,int) ;
 int unreffunc (int ) ;

__attribute__((used)) static void
addcmdentry(const char *name, struct cmdentry *entry)
{
 struct tblentry *cmdp;

 INTOFF;
 cmdp = cmdlookup(name, 1);
 if (cmdp->cmdtype == CMDFUNCTION) {
  unreffunc(cmdp->param.func);
 }
 cmdp->cmdtype = entry->cmdtype;
 cmdp->param = entry->u;
 cmdp->special = entry->special;
 INTON;
}
