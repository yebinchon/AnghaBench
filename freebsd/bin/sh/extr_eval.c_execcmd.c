
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; int * args; } ;


 int VEXPORT ;
 int VSTACK ;
 TYPE_1__* cmdenviron ;
 int environment () ;
 scalar_t__ iflag ;
 scalar_t__ mflag ;
 int optschanged () ;
 int pathval () ;
 int setvareq (int ,int) ;
 int shellexec (char**,int ,int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;

int
execcmd(int argc, char **argv)
{
 int i;





 if (argc > 1 && strcmp(argv[1], "--") == 0)
  argc--, argv++;
 if (argc > 1) {
  iflag = 0;
  mflag = 0;
  optschanged();
  for (i = 0; i < cmdenviron->count; i++)
   setvareq(cmdenviron->args[i], VEXPORT|VSTACK);
  shellexec(argv + 1, environment(), pathval(), 0);

 }
 return 0;
}
