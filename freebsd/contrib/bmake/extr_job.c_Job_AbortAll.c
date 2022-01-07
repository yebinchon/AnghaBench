
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pid_t ;
typedef int WAIT_T ;
struct TYPE_4__ {scalar_t__ job_state; int pid; } ;
typedef TYPE_1__ Job ;


 int ABORT_ERROR ;
 scalar_t__ JOB_ST_RUNNING ;
 int KILLPG (int ,int ) ;
 int SIGINT ;
 int SIGKILL ;
 int WNOHANG ;
 int aborting ;
 scalar_t__ jobTokensRunning ;
 TYPE_1__* job_table ;
 TYPE_1__* job_table_end ;
 scalar_t__ waitpid (int ,int *,int ) ;

void
Job_AbortAll(void)
{
    Job *job;
    WAIT_T foo;

    aborting = ABORT_ERROR;

    if (jobTokensRunning) {
 for (job = job_table; job < job_table_end; job++) {
     if (job->job_state != JOB_ST_RUNNING)
  continue;




     KILLPG(job->pid, SIGINT);
     KILLPG(job->pid, SIGKILL);
 }
    }




    while (waitpid((pid_t) -1, &foo, WNOHANG) > 0)
 continue;
}
