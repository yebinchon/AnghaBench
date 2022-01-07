
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ job_state; int pid; } ;
typedef TYPE_1__ Job ;


 scalar_t__ DEBUG (int ) ;
 int JOB ;
 scalar_t__ JOB_ST_RUNNING ;
 int KILLPG (int,int) ;
 int debug_file ;
 int fprintf (int ,char*,int,...) ;
 TYPE_1__* job_table ;
 TYPE_1__* job_table_end ;

__attribute__((used)) static void
JobCondPassSig(int signo)
{
    Job *job;

    if (DEBUG(JOB)) {
 (void)fprintf(debug_file, "JobCondPassSig(%d) called.\n", signo);
    }

    for (job = job_table; job < job_table_end; job++) {
 if (job->job_state != JOB_ST_RUNNING)
     continue;
 if (DEBUG(JOB)) {
     (void)fprintf(debug_file,
      "JobCondPassSig passing signal %d to child %d.\n",
      signo, job->pid);
 }
 KILLPG(job->pid, signo);
    }
}
