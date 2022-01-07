
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GNode ;


 int CompatDeleteTarget (int *) ;
 int Compat_Make (int *,int *) ;
 int KILLPG (scalar_t__,int) ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_DFL ;
 int TARG_NOCREATE ;
 int * Targ_FindNode (char*,int ) ;
 int Targ_Precious (int *) ;
 int _exit (int) ;
 int bmake_signal (int,int ) ;
 scalar_t__ compatChild ;
 int compatSigno ;
 int * curTarg ;
 int kill (int ,int) ;
 int myPid ;

__attribute__((used)) static void
CompatInterrupt(int signo)
{
    GNode *gn;

    CompatDeleteTarget(curTarg);

    if ((curTarg != ((void*)0)) && !Targ_Precious (curTarg)) {



 if (signo == SIGINT) {
     gn = Targ_FindNode(".INTERRUPT", TARG_NOCREATE);
     if (gn != ((void*)0)) {
  Compat_Make(gn, gn);
     }
 }
    }
    if (signo == SIGQUIT)
 _exit(signo);




    compatSigno = signo;
    if (compatChild > 0) {
 KILLPG(compatChild, signo);
    } else {
 bmake_signal(signo, SIG_DFL);
 kill(myPid, signo);
    }
}
