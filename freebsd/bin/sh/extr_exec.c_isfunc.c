
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tblentry {scalar_t__ cmdtype; } ;


 scalar_t__ CMDFUNCTION ;
 struct tblentry* cmdlookup (char const*,int ) ;

int
isfunc(const char *name)
{
 struct tblentry *cmdp;
 cmdp = cmdlookup(name, 0);
 return (cmdp != ((void*)0) && cmdp->cmdtype == CMDFUNCTION);
}
