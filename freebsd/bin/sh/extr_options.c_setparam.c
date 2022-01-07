
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int malloc; int nparam; char** p; int reset; int * optnext; int * optp; } ;


 char** ckmalloc (int) ;
 int freeparam (TYPE_1__*) ;
 int savestr (int ) ;
 TYPE_1__ shellparam ;

__attribute__((used)) static void
setparam(int argc, char **argv)
{
 char **newparam;
 char **ap;

 ap = newparam = ckmalloc((argc + 1) * sizeof *ap);
 while (*argv) {
  *ap++ = savestr(*argv++);
 }
 *ap = ((void*)0);
 freeparam(&shellparam);
 shellparam.malloc = 1;
 shellparam.nparam = argc;
 shellparam.p = newparam;
 shellparam.optp = ((void*)0);
 shellparam.reset = 1;
 shellparam.optnext = ((void*)0);
}
