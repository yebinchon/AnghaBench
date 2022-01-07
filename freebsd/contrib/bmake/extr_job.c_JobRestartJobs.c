
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ job_state; int pid; int exit_status; scalar_t__ job_suspended; TYPE_1__* node; } ;
struct TYPE_6__ {char* name; } ;
typedef TYPE_2__ Job ;


 scalar_t__ DEBUG (int ) ;
 int JOB ;
 scalar_t__ JOB_ST_FINISHED ;
 scalar_t__ JOB_ST_RUNNING ;
 int JobFinish (TYPE_2__*,int ) ;
 scalar_t__ KILLPG (int,int ) ;
 int SIGCONT ;
 int debug_file ;
 int fflush (int ) ;
 int fprintf (int ,char*,int) ;
 TYPE_2__* job_table ;
 TYPE_2__* job_table_end ;
 scalar_t__ make_suspended ;
 int printf (char*,char*) ;
 int stdout ;

__attribute__((used)) static void
JobRestartJobs(void)
{
    Job *job;

    for (job = job_table; job < job_table_end; job++) {
 if (job->job_state == JOB_ST_RUNNING &&
  (make_suspended || job->job_suspended)) {
     if (DEBUG(JOB)) {
  (void)fprintf(debug_file, "Restarting stopped job pid %d.\n",
   job->pid);
     }
     if (job->job_suspended) {
      (void)printf("*** [%s] Continued\n", job->node->name);
      (void)fflush(stdout);
     }
     job->job_suspended = 0;
     if (KILLPG(job->pid, SIGCONT) != 0 && DEBUG(JOB)) {
  fprintf(debug_file, "Failed to send SIGCONT to %d\n", job->pid);
     }
 }
 if (job->job_state == JOB_ST_FINISHED)

     JobFinish(job, job->exit_status);
    }
    make_suspended = 0;
}
