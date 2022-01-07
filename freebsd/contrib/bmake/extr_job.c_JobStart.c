
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_24__ {int type; int made; int commands; } ;
struct TYPE_23__ {scalar_t__ job_state; int flags; void* cmdFILE; TYPE_2__* node; int * tailCmds; int * inPollfd; } ;
typedef TYPE_1__ Job ;
typedef TYPE_2__ GNode ;
typedef scalar_t__ Boolean ;


 int DEBUG (int ) ;
 int DieHorribly () ;
 int Error ;
 scalar_t__ FALSE ;
 int FD_CLOEXEC ;
 int FILENO (void*) ;
 int F_SETFD ;
 int JOB_ERROR ;
 int JOB_FINISHED ;
 int JOB_IGNERR ;
 int JOB_RUNNING ;
 int JOB_SILENT ;
 int JOB_SPECIAL ;
 scalar_t__ JOB_ST_FREE ;
 scalar_t__ JOB_ST_SETUP ;
 int JobCreatePipe (TYPE_1__*,int) ;
 int JobExec (TYPE_1__*,char**) ;
 int JobMakeArgv (TYPE_1__*,char**) ;
 int JobPrintCommand ;
 int JobSaveCommand ;
 int JobSigLock (int *) ;
 int JobSigUnlock (int *) ;
 scalar_t__ Job_CheckCommands (TYPE_2__*,int ) ;
 int Job_TokenReturn () ;
 int Job_Touch (TYPE_2__*,int) ;
 int Lst_ForEach (int ,int ,TYPE_1__*) ;
 int Lst_ForEachFrom (int ,int *,int ,TYPE_2__*) ;
 int MADE ;
 int MESSAGE (void*,TYPE_2__*) ;
 int Make_Update (TYPE_2__*) ;
 scalar_t__ NoExecute (TYPE_2__*) ;
 int OP_MAKE ;
 int OP_SPECIAL ;
 int PrintOnError (TYPE_2__*,int *) ;
 int Punt (char*,...) ;
 int SCRIPT ;
 int TMPPAT ;
 scalar_t__ TRUE ;
 scalar_t__ Targ_Ignore (TYPE_2__*) ;
 scalar_t__ Targ_Silent (TYPE_2__*) ;
 scalar_t__ aborting ;
 int eunlink (char*) ;
 int fclose (void*) ;
 int fcntl (int ,int ,int ) ;
 void* fdopen (int,char*) ;
 int fflush (void*) ;
 int free (char*) ;
 TYPE_1__* job_table ;
 TYPE_1__* job_table_end ;
 TYPE_2__* lastNode ;
 int memset (TYPE_1__*,int ,int) ;
 int meta_job_start (TYPE_1__*,TYPE_2__*) ;
 int mkTempFile (int ,char**) ;
 int noExecute ;
 int noRecursiveExecute ;
 scalar_t__ numCommands ;
 void* stdout ;
 int touchFlag ;
 scalar_t__ useMeta ;

__attribute__((used)) static int
JobStart(GNode *gn, int flags)
{
    Job *job;
    char *argv[10];
    Boolean cmdsOK;
    Boolean noExec;
    int tfd;

    for (job = job_table; job < job_table_end; job++) {
 if (job->job_state == JOB_ST_FREE)
     break;
    }
    if (job >= job_table_end)
 Punt("JobStart no job slots vacant");

    memset(job, 0, sizeof *job);
    job->job_state = JOB_ST_SETUP;
    if (gn->type & OP_SPECIAL)
 flags |= JOB_SPECIAL;

    job->node = gn;
    job->tailCmds = ((void*)0);






    job->flags = 0;
    if (Targ_Ignore(gn)) {
 job->flags |= JOB_IGNERR;
    }
    if (Targ_Silent(gn)) {
 job->flags |= JOB_SILENT;
    }
    job->flags |= flags;





    cmdsOK = Job_CheckCommands(gn, Error);

    job->inPollfd = ((void*)0);






    if (((gn->type & OP_MAKE) && !(noRecursiveExecute)) ||
     (!noExecute && !touchFlag)) {





 char *tfile;
 sigset_t mask;




 if (!cmdsOK) {
     PrintOnError(gn, ((void*)0));
     DieHorribly();
 }

 JobSigLock(&mask);
 tfd = mkTempFile(TMPPAT, &tfile);
 if (!DEBUG(SCRIPT))
  (void)eunlink(tfile);
 JobSigUnlock(&mask);

 job->cmdFILE = fdopen(tfd, "w+");
 if (job->cmdFILE == ((void*)0)) {
     Punt("Could not fdopen %s", tfile);
 }
 (void)fcntl(FILENO(job->cmdFILE), F_SETFD, FD_CLOEXEC);




 noExec = FALSE;
 numCommands = 0;
 Lst_ForEach(gn->commands, JobPrintCommand, job);





 if (numCommands == 0) {
     noExec = TRUE;
 }

 free(tfile);
    } else if (NoExecute(gn)) {




 if (lastNode != gn) {
     MESSAGE(stdout, gn);
     lastNode = gn;
 }
 job->cmdFILE = stdout;





 if (cmdsOK) {
     Lst_ForEach(gn->commands, JobPrintCommand, job);
 }



 noExec = TRUE;
    } else {






 job->cmdFILE = stdout;
     Job_Touch(gn, job->flags&JOB_SILENT);
 noExec = TRUE;
    }

    (void)fflush(job->cmdFILE);




    if (noExec) {
 if (!(job->flags & JOB_SPECIAL))
     Job_TokenReturn();



 if (job->cmdFILE != stdout) {
     if (job->cmdFILE != ((void*)0)) {
  (void)fclose(job->cmdFILE);
  job->cmdFILE = ((void*)0);
     }
 }





 if (cmdsOK && aborting == 0) {
     if (job->tailCmds != ((void*)0)) {
  Lst_ForEachFrom(job->node->commands, job->tailCmds,
    JobSaveCommand,
          job->node);
     }
     job->node->made = MADE;
     Make_Update(job->node);
 }
 job->job_state = JOB_ST_FREE;
 return cmdsOK ? JOB_FINISHED : JOB_ERROR;
    }





    JobMakeArgv(job, argv);


    JobCreatePipe(job, 3);

    JobExec(job, argv);
    return(JOB_RUNNING);
}
