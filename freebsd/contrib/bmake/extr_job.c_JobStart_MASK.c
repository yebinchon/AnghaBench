#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_24__ {int type; int /*<<< orphan*/  made; int /*<<< orphan*/  commands; } ;
struct TYPE_23__ {scalar_t__ job_state; int flags; void* cmdFILE; TYPE_2__* node; int /*<<< orphan*/ * tailCmds; int /*<<< orphan*/ * inPollfd; } ;
typedef  TYPE_1__ Job ;
typedef  TYPE_2__ GNode ;
typedef  scalar_t__ Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  Error ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  F_SETFD ; 
 int JOB_ERROR ; 
 int JOB_FINISHED ; 
 int JOB_IGNERR ; 
 int JOB_RUNNING ; 
 int JOB_SILENT ; 
 int JOB_SPECIAL ; 
 scalar_t__ JOB_ST_FREE ; 
 scalar_t__ JOB_ST_SETUP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char**) ; 
 int /*<<< orphan*/  JobPrintCommand ; 
 int /*<<< orphan*/  JobSaveCommand ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  MADE ; 
 int /*<<< orphan*/  FUNC13 (void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 int OP_MAKE ; 
 int OP_SPECIAL ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  SCRIPT ; 
 int /*<<< orphan*/  TMPPAT ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC18 (TYPE_2__*) ; 
 scalar_t__ FUNC19 (TYPE_2__*) ; 
 scalar_t__ aborting ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (void*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC23 (int,char*) ; 
 int /*<<< orphan*/  FUNC24 (void*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 TYPE_1__* job_table ; 
 TYPE_1__* job_table_end ; 
 TYPE_2__* lastNode ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC28 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  noExecute ; 
 int /*<<< orphan*/  noRecursiveExecute ; 
 scalar_t__ numCommands ; 
 void* stdout ; 
 int /*<<< orphan*/  touchFlag ; 
 scalar_t__ useMeta ; 

__attribute__((used)) static int
FUNC29(GNode *gn, int flags)
{
    Job		  *job;       /* new job descriptor */
    char	  *argv[10];  /* Argument vector to shell */
    Boolean	  cmdsOK;     /* true if the nodes commands were all right */
    Boolean 	  noExec;     /* Set true if we decide not to run the job */
    int		  tfd;	      /* File descriptor to the temp file */

    for (job = job_table; job < job_table_end; job++) {
	if (job->job_state == JOB_ST_FREE)
	    break;
    }
    if (job >= job_table_end)
	FUNC17("JobStart no job slots vacant");

    FUNC26(job, 0, sizeof *job);
    job->job_state = JOB_ST_SETUP;
    if (gn->type & OP_SPECIAL)
	flags |= JOB_SPECIAL;

    job->node = gn;
    job->tailCmds = NULL;

    /*
     * Set the initial value of the flags for this job based on the global
     * ones and the node's attributes... Any flags supplied by the caller
     * are also added to the field.
     */
    job->flags = 0;
    if (FUNC18(gn)) {
	job->flags |= JOB_IGNERR;
    }
    if (FUNC19(gn)) {
	job->flags |= JOB_SILENT;
    }
    job->flags |= flags;

    /*
     * Check the commands now so any attributes from .DEFAULT have a chance
     * to migrate to the node
     */
    cmdsOK = FUNC8(gn, Error);

    job->inPollfd = NULL;
    /*
     * If the -n flag wasn't given, we open up OUR (not the child's)
     * temporary file to stuff commands in it. The thing is rd/wr so we don't
     * need to reopen it to feed it to the shell. If the -n flag *was* given,
     * we just set the file to be stdout. Cute, huh?
     */
    if (((gn->type & OP_MAKE) && !(noRecursiveExecute)) ||
	    (!noExecute && !touchFlag)) {
	/*
	 * tfile is the name of a file into which all shell commands are
	 * put. It is removed before the child shell is executed, unless
	 * DEBUG(SCRIPT) is set.
	 */
	char *tfile;
	sigset_t mask;
	/*
	 * We're serious here, but if the commands were bogus, we're
	 * also dead...
	 */
	if (!cmdsOK) {
	    FUNC16(gn, NULL);	/* provide some clue */
	    FUNC1();
	}

	FUNC6(&mask);
	tfd = FUNC28(TMPPAT, &tfile);
	if (!FUNC0(SCRIPT))
		(void)FUNC20(tfile);
	FUNC7(&mask);

	job->cmdFILE = FUNC23(tfd, "w+");
	if (job->cmdFILE == NULL) {
	    FUNC17("Could not fdopen %s", tfile);
	}
	(void)FUNC22(FUNC2(job->cmdFILE), F_SETFD, FD_CLOEXEC);
	/*
	 * Send the commands to the command file, flush all its buffers then
	 * rewind and remove the thing.
	 */
	noExec = FALSE;

#ifdef USE_META
	if (useMeta) {
	    meta_job_start(job, gn);
	    if (Targ_Silent(gn)) {	/* might have changed */
		job->flags |= JOB_SILENT;
	    }
	}
#endif
	/*
	 * We can do all the commands at once. hooray for sanity
	 */
	numCommands = 0;
	FUNC11(gn->commands, JobPrintCommand, job);

	/*
	 * If we didn't print out any commands to the shell script,
	 * there's not much point in executing the shell, is there?
	 */
	if (numCommands == 0) {
	    noExec = TRUE;
	}

	FUNC25(tfile);
    } else if (FUNC15(gn)) {
	/*
	 * Not executing anything -- just print all the commands to stdout
	 * in one fell swoop. This will still set up job->tailCmds correctly.
	 */
	if (lastNode != gn) {
	    FUNC13(stdout, gn);
	    lastNode = gn;
	}
	job->cmdFILE = stdout;
	/*
	 * Only print the commands if they're ok, but don't die if they're
	 * not -- just let the user know they're bad and keep going. It
	 * doesn't do any harm in this case and may do some good.
	 */
	if (cmdsOK) {
	    FUNC11(gn->commands, JobPrintCommand, job);
	}
	/*
	 * Don't execute the shell, thank you.
	 */
	noExec = TRUE;
    } else {
	/*
	 * Just touch the target and note that no shell should be executed.
	 * Set cmdFILE to stdout to make life easier. Check the commands, too,
	 * but don't die if they're no good -- it does no harm to keep working
	 * up the graph.
	 */
	job->cmdFILE = stdout;
    	FUNC10(gn, job->flags&JOB_SILENT);
	noExec = TRUE;
    }
    /* Just in case it isn't already... */
    (void)FUNC24(job->cmdFILE);

    /*
     * If we're not supposed to execute a shell, don't.
     */
    if (noExec) {
	if (!(job->flags & JOB_SPECIAL))
	    FUNC9();
	/*
	 * Unlink and close the command file if we opened one
	 */
	if (job->cmdFILE != stdout) {
	    if (job->cmdFILE != NULL) {
		(void)FUNC21(job->cmdFILE);
		job->cmdFILE = NULL;
	    }
	}

	/*
	 * We only want to work our way up the graph if we aren't here because
	 * the commands for the job were no good.
	 */
	if (cmdsOK && aborting == 0) {
	    if (job->tailCmds != NULL) {
		FUNC12(job->node->commands, job->tailCmds,
				JobSaveCommand,
			       job->node);
	    }
	    job->node->made = MADE;
	    FUNC14(job->node);
	}
	job->job_state = JOB_ST_FREE;
	return cmdsOK ? JOB_FINISHED : JOB_ERROR;
    }

    /*
     * Set up the control arguments to the shell. This is based on the flags
     * set earlier for this job.
     */
    FUNC5(job, argv);

    /* Create the pipe by which we'll get the shell's output.  */
    FUNC3(job, 3);

    FUNC4(job, argv);
    return(JOB_RUNNING);
}