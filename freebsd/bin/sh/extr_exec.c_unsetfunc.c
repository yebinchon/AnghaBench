
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func; } ;
struct tblentry {scalar_t__ cmdtype; TYPE_1__ param; } ;


 scalar_t__ CMDFUNCTION ;
 struct tblentry* cmdlookup (char const*,int ) ;
 int delete_cmd_entry () ;
 int unreffunc (int ) ;

int
unsetfunc(const char *name)
{
 struct tblentry *cmdp;

 if ((cmdp = cmdlookup(name, 0)) != ((void*)0) && cmdp->cmdtype == CMDFUNCTION) {
  unreffunc(cmdp->param.func);
  delete_cmd_entry();
  return (0);
 }
 return (0);
}
