
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_4__ {scalar_t__ job_state; int pid; int * node; } ;
typedef TYPE_1__ Job ;
typedef int GNode ;


 int ABORT_INTERRUPT ;
 scalar_t__ DEBUG (int ) ;
 int FALSE ;
 int JOB ;
 scalar_t__ JOB_ST_RUNNING ;
 int JobDeleteTarget (int *) ;
 int JobRun (int *) ;
 int JobSigLock (int *) ;
 int JobSigUnlock (int *) ;
 int KILLPG (int,int) ;
 int MAKEINTR ;
 int TARG_NOCREATE ;
 int * Targ_FindNode (char*,int ) ;
 int Trace_Log (int ,int ) ;
 int aborting ;
 int debug_file ;
 int exit (int) ;
 int fprintf (int ,char*,int,int) ;
 int ignoreErrors ;
 TYPE_1__* job_table ;
 TYPE_1__* job_table_end ;
 int touchFlag ;

__attribute__((used)) static void
JobInterrupt(int runINTERRUPT, int signo)
{
    Job *job;
    GNode *interrupt;
    sigset_t mask;
    GNode *gn;

    aborting = ABORT_INTERRUPT;

    JobSigLock(&mask);

    for (job = job_table; job < job_table_end; job++) {
 if (job->job_state != JOB_ST_RUNNING)
     continue;

 gn = job->node;

 JobDeleteTarget(gn);
 if (job->pid) {
     if (DEBUG(JOB)) {
  (void)fprintf(debug_file,
      "JobInterrupt passing signal %d to child %d.\n",
      signo, job->pid);
     }
     KILLPG(job->pid, signo);
 }
    }

    JobSigUnlock(&mask);

    if (runINTERRUPT && !touchFlag) {
 interrupt = Targ_FindNode(".INTERRUPT", TARG_NOCREATE);
 if (interrupt != ((void*)0)) {
     ignoreErrors = FALSE;
     JobRun(interrupt);
 }
    }
    Trace_Log(MAKEINTR, 0);
    exit(signo);
}
