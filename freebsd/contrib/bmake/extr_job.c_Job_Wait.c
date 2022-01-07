
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ABORT_WAIT ;
 int Job_CatchOutput () ;
 scalar_t__ aborting ;
 scalar_t__ jobTokensRunning ;

void
Job_Wait(void)
{
    aborting = ABORT_WAIT;
    while (jobTokensRunning != 0) {
 Job_CatchOutput();
    }
    aborting = 0;
}
