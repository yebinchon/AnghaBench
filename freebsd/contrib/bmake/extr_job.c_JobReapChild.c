
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pid_t ;
typedef int WAIT_T ;
struct TYPE_6__ {int pid; int job_suspended; int exit_status; int job_state; TYPE_1__* node; } ;
struct TYPE_5__ {char* name; } ;
typedef TYPE_2__ Job ;
typedef scalar_t__ Boolean ;


 scalar_t__ DEBUG (int ) ;
 int Error (char*,int ,int ) ;
 int JOB ;
 int JOB_ST_FINISHED ;
 int JOB_ST_RUNNING ;
 TYPE_2__* JobFindPid (int ,int ,scalar_t__) ;
 int JobFinish (TYPE_2__*,int ) ;


 int WAIT_STATUS (int ) ;
 scalar_t__ WIFSTOPPED (int ) ;
 int WSTOPSIG (int ) ;
 int debug_file ;
 int fflush (int ) ;
 int fprintf (int ,char*,int,char*) ;
 scalar_t__ jobTokensRunning ;
 int lurking_children ;
 int make_suspended ;
 int printf (char*,char*,...) ;
 int stdout ;

void
JobReapChild(pid_t pid, WAIT_T status, Boolean isJobs)
{
    Job *job;




    if (jobTokensRunning == 0)
 return;

    job = JobFindPid(pid, JOB_ST_RUNNING, isJobs);
    if (job == ((void*)0)) {
 if (isJobs) {
     if (!lurking_children)
  Error("Child (%d) status %x not in table?", pid, status);
 }
 return;
    }
    if (WIFSTOPPED(status)) {
 if (DEBUG(JOB)) {
     (void)fprintf(debug_file, "Process %d (%s) stopped.\n",
     job->pid, job->node->name);
 }
 if (!make_suspended) {
     switch (WSTOPSIG(status)) {
     case 128:
  (void)printf("*** [%s] Suspended\n", job->node->name);
  break;
     case 129:
  (void)printf("*** [%s] Stopped\n", job->node->name);
  break;
     default:
  (void)printf("*** [%s] Stopped -- signal %d\n",
        job->node->name, WSTOPSIG(status));
     }
     job->job_suspended = 1;
 }
 (void)fflush(stdout);
 return;
    }

    job->job_state = JOB_ST_FINISHED;
    job->exit_status = WAIT_STATUS(status);

    JobFinish(job, status);
}
