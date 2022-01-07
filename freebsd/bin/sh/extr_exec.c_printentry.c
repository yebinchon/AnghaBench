
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; int func; } ;
struct tblentry {scalar_t__ cmdtype; TYPE_1__ param; int cmdname; } ;


 scalar_t__ CMDBUILTIN ;
 scalar_t__ CMDFUNCTION ;
 scalar_t__ CMDNORMAL ;
 int INTOFF ;
 int INTON ;
 int ckfree (char*) ;
 char* commandtext (int ) ;
 int error (char*,scalar_t__) ;
 int getfuncnode (int ) ;
 int out1c (char) ;
 int out1fmt (char*,int ) ;
 int out1str (char*) ;
 char* padvance (char const**,char const**,int ) ;
 char* pathval () ;
 int stunalloc (char*) ;

__attribute__((used)) static void
printentry(struct tblentry *cmdp, int verbose)
{
 int idx;
 const char *path, *opt;
 char *name;

 if (cmdp->cmdtype == CMDNORMAL) {
  idx = cmdp->param.index;
  path = pathval();
  do {
   name = padvance(&path, &opt, cmdp->cmdname);
   stunalloc(name);
  } while (--idx >= 0);
  out1str(name);
 } else if (cmdp->cmdtype == CMDBUILTIN) {
  out1fmt("builtin %s", cmdp->cmdname);
 } else if (cmdp->cmdtype == CMDFUNCTION) {
  out1fmt("function %s", cmdp->cmdname);
  if (verbose) {
   INTOFF;
   name = commandtext(getfuncnode(cmdp->param.func));
   out1c(' ');
   out1str(name);
   ckfree(name);
   INTON;
  }




 }
 out1c('\n');
}
