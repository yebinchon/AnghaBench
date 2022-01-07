
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int WAIT_T ;


 scalar_t__ DEBUG (int ) ;
 int JOB ;
 int JobReapChild (int,int ,int ) ;
 int TRUE ;
 int WAIT_STATUS (int ) ;
 int WNOHANG ;
 int WUNTRACED ;
 int debug_file ;
 int fprintf (int ,char*,int,int) ;
 scalar_t__ jobTokensRunning ;
 int waitpid (int ,int *,int) ;

void
Job_CatchChildren(void)
{
    int pid;
    WAIT_T status;




    if (jobTokensRunning == 0)
 return;

    while ((pid = waitpid((pid_t) -1, &status, WNOHANG | WUNTRACED)) > 0) {
 if (DEBUG(JOB)) {
     (void)fprintf(debug_file, "Process %d exited/stopped status %x.\n", pid,
       WAIT_STATUS(status));
 }
 JobReapChild(pid, status, TRUE);
    }
}
