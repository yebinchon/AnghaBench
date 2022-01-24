#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct line_filter {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* DEFAULT_DIFF_PROGRAM ; 
#define  DIFF_PROGRAM_OPTION 131 
 int EINTR ; 
 int ENOENT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  EXIT_TROUBLE ; 
#define  HELP_OPTION 130 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  PACKAGE_NAME ; 
 int /*<<< orphan*/  PACKAGE_VERSION ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 scalar_t__ SIG_DFL ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int STDOUT_FILENO ; 
#define  STRIP_TRAILING_CR_OPTION 129 
#define  TABSIZE_OPTION 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ catchsig ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char** diffargv ; 
 scalar_t__ diffpid ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 char const* editor_program ; 
 int errno ; 
 int /*<<< orphan*/  FUNC13 (char*,char**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exit_failure ; 
 int /*<<< orphan*/  FUNC15 () ; 
 char* FUNC16 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/ * FUNC18 (int,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 char* FUNC20 (char*) ; 
 int FUNC21 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handler_index_of_SIGINT ; 
 int /*<<< orphan*/  handler_index_of_SIGPIPE ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int*,char***) ; 
 int FUNC24 (struct line_filter*,struct line_filter*,char const*,struct line_filter*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct line_filter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  longopts ; 
 char* optarg ; 
 int optind ; 
 char const* output ; 
 int FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 scalar_t__ FUNC28 (int*) ; 
 int /*<<< orphan*/ * FUNC29 (char*,char*) ; 
 char* program_name ; 
 scalar_t__ FUNC30 (char*,char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int suppress_common_lines ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 scalar_t__ tmpname ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 (char*,char*) ; 
 int /*<<< orphan*/  FUNC39 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC43 () ; 
 scalar_t__ FUNC44 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 char* FUNC45 (size_t) ; 

int
FUNC46 (int argc, char *argv[])
{
  int opt;
  char const *prog;

  exit_failure = EXIT_TROUBLE;
  FUNC23 (&argc, &argv);
  program_name = argv[0];
  FUNC31 (LC_ALL, "");
  FUNC2 (PACKAGE, LOCALEDIR);
  FUNC36 (PACKAGE);
  FUNC3 (cleanup);

  prog = FUNC20 ("EDITOR");
  if (prog)
    editor_program = prog;

  FUNC10 (DEFAULT_DIFF_PROGRAM);

  /* parse command line args */
  while ((opt = FUNC21 (argc, argv, "abBdEHiI:lo:stvw:W", longopts, 0))
	 != -1)
    {
      switch (opt)
	{
	case 'a':
	  FUNC10 ("-a");
	  break;

	case 'b':
	  FUNC10 ("-b");
	  break;

	case 'B':
	  FUNC10 ("-B");
	  break;

	case 'd':
	  FUNC10 ("-d");
	  break;

	case 'E':
	  FUNC10 ("-E");
	  break;

	case 'H':
	  FUNC10 ("-H");
	  break;

	case 'i':
	  FUNC10 ("-i");
	  break;

	case 'I':
	  FUNC10 ("-I");
	  FUNC10 (optarg);
	  break;

	case 'l':
	  FUNC10 ("--left-column");
	  break;

	case 'o':
	  output = optarg;
	  break;

	case 's':
	  suppress_common_lines = true;
	  break;

	case 't':
	  FUNC10 ("-t");
	  break;

	case 'v':
	  FUNC42 (stdout, "sdiff", PACKAGE_NAME, PACKAGE_VERSION,
		       "Thomas Lord", (char *) 0);
	  FUNC5 ();
	  return EXIT_SUCCESS;

	case 'w':
	  FUNC10 ("-W");
	  FUNC10 (optarg);
	  break;

	case 'W':
	  FUNC10 ("-w");
	  break;

	case DIFF_PROGRAM_OPTION:
	  diffargv[0] = optarg;
	  break;

	case HELP_OPTION:
	  FUNC41 ();
	  FUNC5 ();
	  return EXIT_SUCCESS;

	case STRIP_TRAILING_CR_OPTION:
	  FUNC10 ("--strip-trailing-cr");
	  break;

	case TABSIZE_OPTION:
	  FUNC10 ("--tabsize");
	  FUNC10 (optarg);
	  break;

	default:
	  FUNC38 (0, 0);
	}
    }

  if (argc - optind != 2)
    {
      if (argc - optind < 2)
	FUNC38 ("missing operand after `%s'", argv[argc - 1]);
      else
	FUNC38 ("extra operand `%s'", argv[optind + 2]);
    }

  if (! output)
    {
      /* easy case: diff does everything for us */
      if (suppress_common_lines)
	FUNC10 ("--suppress-common-lines");
      FUNC10 ("-y");
      FUNC10 ("--");
      FUNC10 (argv[optind]);
      FUNC10 (argv[optind + 1]);
      FUNC10 (0);
      FUNC13 (diffargv[0], (char **) diffargv);
      FUNC27 (diffargv[0]);
    }
  else
    {
      char const *lname, *rname;
      FILE *left, *right, *out, *diffout;
      bool interact_ok;
      struct line_filter lfilt;
      struct line_filter rfilt;
      struct line_filter diff_filt;
      bool leftdir = FUNC11 (argv[optind]);
      bool rightdir = FUNC11 (argv[optind + 1]);

      if (leftdir & rightdir)
	FUNC17 ("both files to be compared are directories");

      lname = FUNC16 (argv[optind], leftdir, argv[optind + 1]);
      left = FUNC8 (lname, "r");
      rname = FUNC16 (argv[optind + 1], rightdir, argv[optind]);
      right = FUNC8 (rname, "r");
      out = FUNC8 (output, "w");

      FUNC10 ("--sdiff-merge-assist");
      FUNC10 ("--");
      FUNC10 (argv[optind]);
      FUNC10 (argv[optind + 1]);
      FUNC10 (0);

      FUNC37 ();

#if ! (HAVE_WORKING_FORK || HAVE_WORKING_VFORK)
      {
	size_t cmdsize = 1;
	char *p, *command;
	int i;

	for (i = 0;  diffargv[i];  i++)
	  cmdsize += FUNC30 (0, diffargv[i]) + 1;
	command = p = FUNC45 (cmdsize);
	for (i = 0;  diffargv[i];  i++)
	  {
	    p += FUNC30 (p, diffargv[i]);
	    *p++ = ' ';
	  }
	p[-1] = 0;
	errno = 0;
	diffout = FUNC29 (command, "r");
	if (! diffout)
	  FUNC27 (command);
	FUNC19 (command);
      }
#else
      {
	int diff_fds[2];
# if HAVE_WORKING_VFORK
	sigset_t procmask;
	sigset_t blocked;
# endif

	if (pipe (diff_fds) != 0)
	  perror_fatal ("pipe");

# if HAVE_WORKING_VFORK
	/* Block SIGINT and SIGPIPE.  */
	sigemptyset (&blocked);
	sigaddset (&blocked, SIGINT);
	sigaddset (&blocked, SIGPIPE);
	sigprocmask (SIG_BLOCK, &blocked, &procmask);
# endif
	diffpid = vfork ();
	if (diffpid < 0)
	  perror_fatal ("fork");
	if (! diffpid)
	  {
	    /* Alter the child's SIGINT and SIGPIPE handlers;
	       this may munge the parent.
	       The child ignores SIGINT in case the user interrupts the editor.
	       The child does not ignore SIGPIPE, even if the parent does.  */
	    if (initial_handler (handler_index_of_SIGINT) != SIG_IGN)
	      signal_handler (SIGINT, SIG_IGN);
	    signal_handler (SIGPIPE, SIG_DFL);
# if HAVE_WORKING_VFORK
	    /* Stop blocking SIGINT and SIGPIPE in the child.  */
	    sigprocmask (SIG_SETMASK, &procmask, 0);
# endif
	    close (diff_fds[0]);
	    if (diff_fds[1] != STDOUT_FILENO)
	      {
		dup2 (diff_fds[1], STDOUT_FILENO);
		close (diff_fds[1]);
	      }

	    execvp (diffargv[0], (char **) diffargv);
	    _exit (errno == ENOENT ? 127 : 126);
	  }

# if HAVE_WORKING_VFORK
	/* Restore the parent's SIGINT and SIGPIPE behavior.  */
	if (initial_handler (handler_index_of_SIGINT) != SIG_IGN)
	  signal_handler (SIGINT, catchsig);
	if (initial_handler (handler_index_of_SIGPIPE) != SIG_IGN)
	  signal_handler (SIGPIPE, catchsig);
	else
	  signal_handler (SIGPIPE, SIG_IGN);

	/* Stop blocking SIGINT and SIGPIPE in the parent.  */
	sigprocmask (SIG_SETMASK, &procmask, 0);
# endif

	close (diff_fds[1]);
	diffout = fdopen (diff_fds[0], "r");
	if (! diffout)
	  perror_fatal ("fdopen");
      }
#endif

      FUNC25 (&diff_filt, diffout);
      FUNC25 (&lfilt, left);
      FUNC25 (&rfilt, right);

      interact_ok = FUNC24 (&diff_filt, &lfilt, lname, &rfilt, rname, out);

      FUNC7 (left);
      FUNC7 (right);
      FUNC7 (out);

      {
	int wstatus;
	int werrno = 0;

#if ! (HAVE_WORKING_FORK || HAVE_WORKING_VFORK)
	wstatus = FUNC26 (diffout);
	if (wstatus == -1)
	  werrno = errno;
#else
	ck_fclose (diffout);
	while (waitpid (diffpid, &wstatus, 0) < 0)
	  if (errno == EINTR)
	    checksigs ();
	  else
	    perror_fatal ("waitpid");
	diffpid = 0;
#endif

	if (tmpname)
	  {
	    FUNC39 (tmpname);
	    tmpname = 0;
	  }

	if (! interact_ok)
	  FUNC15 ();

	FUNC4 (werrno, wstatus, EXIT_FAILURE, diffargv[0]);
	FUNC40 (0);
	FUNC6 ();
	FUNC14 (FUNC0 (wstatus));
      }
    }
  return EXIT_SUCCESS;			/* Fool `-Wall'.  */
}