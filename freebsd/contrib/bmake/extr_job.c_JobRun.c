
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ made; } ;
typedef int Lst ;
typedef TYPE_1__ GNode ;


 int Compat_Make (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ ERROR ;
 int FALSE ;
 int JOB_SPECIAL ;
 int JobStart (TYPE_1__*,int ) ;
 int Job_CatchOutput () ;
 int Lst_AtEnd (int ,TYPE_1__*) ;
 int Lst_Destroy (int ,int *) ;
 int Lst_Init (int ) ;
 int Make_Run (int ) ;
 int PrintOnError (TYPE_1__*,char*) ;
 int exit (int) ;
 scalar_t__ jobTokensRunning ;

__attribute__((used)) static void
JobRun(GNode *targ)
{
    Compat_Make(targ, targ);
    if (targ->made == ERROR) {
 PrintOnError(targ, "\n\nStop.");
 exit(1);
    }

}
