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
struct cleanup {int dummy; } ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned char*,int /*<<< orphan*/ ) ; 
#define  TARGET_SIGNAL_0 132 
#define  TARGET_SIGNAL_DEFAULT 131 
#define  TARGET_SIGNAL_INT 130 
 scalar_t__ TARGET_SIGNAL_LAST ; 
#define  TARGET_SIGNAL_TRAP 129 
#define  TARGET_SIGNAL_UNKNOWN 128 
 int /*<<< orphan*/  FUNC1 (int,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char** FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ FUNC9 (char) ; 
 struct cleanup* FUNC10 (char**) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  signal_print ; 
 int /*<<< orphan*/  signal_program ; 
 int /*<<< orphan*/  signal_stop ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 

__attribute__((used)) static void
FUNC23 (char *args, int from_tty)
{
  char **argv;
  int digits, wordlen;
  int sigfirst, signum, siglast;
  enum target_signal oursig;
  int allsigs;
  int nsigs;
  unsigned char *sigs;
  struct cleanup *old_chain;

  if (args == NULL)
    {
      FUNC7 ("signal to handle");
    }

  /* Allocate and zero an array of flags for which signals to handle. */

  nsigs = (int) TARGET_SIGNAL_LAST;
  sigs = (unsigned char *) FUNC2 (nsigs);
  FUNC11 (sigs, 0, nsigs);

  /* Break the command line up into args. */

  argv = FUNC4 (args);
  if (argv == NULL)
    {
      FUNC12 (0);
    }
  old_chain = FUNC10 (argv);

  /* Walk through the args, looking for signal oursigs, signal names, and
     actions.  Signal numbers and signal names may be interspersed with
     actions, with the actions being performed for all signals cumulatively
     specified.  Signal ranges can be specified as <LOW>-<HIGH>. */

  while (*argv != NULL)
    {
      wordlen = FUNC17 (*argv);
      for (digits = 0; FUNC9 ((*argv)[digits]); digits++)
	{;
	}
      allsigs = 0;
      sigfirst = siglast = -1;

      if (wordlen >= 1 && !FUNC18 (*argv, "all", wordlen))
	{
	  /* Apply action to all signals except those used by the
	     debugger.  Silently skip those. */
	  allsigs = 1;
	  sigfirst = 0;
	  siglast = nsigs - 1;
	}
      else if (wordlen >= 1 && !FUNC18 (*argv, "stop", wordlen))
	{
	  FUNC0 (nsigs, sigs, signal_stop);
	  FUNC0 (nsigs, sigs, signal_print);
	}
      else if (wordlen >= 1 && !FUNC18 (*argv, "ignore", wordlen))
	{
	  FUNC1 (nsigs, sigs, signal_program);
	}
      else if (wordlen >= 2 && !FUNC18 (*argv, "print", wordlen))
	{
	  FUNC0 (nsigs, sigs, signal_print);
	}
      else if (wordlen >= 2 && !FUNC18 (*argv, "pass", wordlen))
	{
	  FUNC0 (nsigs, sigs, signal_program);
	}
      else if (wordlen >= 3 && !FUNC18 (*argv, "nostop", wordlen))
	{
	  FUNC1 (nsigs, sigs, signal_stop);
	}
      else if (wordlen >= 3 && !FUNC18 (*argv, "noignore", wordlen))
	{
	  FUNC0 (nsigs, sigs, signal_program);
	}
      else if (wordlen >= 4 && !FUNC18 (*argv, "noprint", wordlen))
	{
	  FUNC1 (nsigs, sigs, signal_print);
	  FUNC1 (nsigs, sigs, signal_stop);
	}
      else if (wordlen >= 4 && !FUNC18 (*argv, "nopass", wordlen))
	{
	  FUNC1 (nsigs, sigs, signal_program);
	}
      else if (digits > 0)
	{
	  /* It is numeric.  The numeric signal refers to our own
	     internal signal numbering from target.h, not to host/target
	     signal  number.  This is a feature; users really should be
	     using symbolic names anyway, and the common ones like
	     SIGHUP, SIGINT, SIGALRM, etc. will work right anyway.  */

	  sigfirst = siglast = (int)
	    FUNC20 (FUNC3 (*argv));
	  if ((*argv)[digits] == '-')
	    {
	      siglast = (int)
		FUNC20 (FUNC3 ((*argv) + digits + 1));
	    }
	  if (sigfirst > siglast)
	    {
	      /* Bet he didn't figure we'd think of this case... */
	      signum = sigfirst;
	      sigfirst = siglast;
	      siglast = signum;
	    }
	}
      else
	{
	  oursig = FUNC21 (*argv);
	  if (oursig != TARGET_SIGNAL_UNKNOWN)
	    {
	      sigfirst = siglast = (int) oursig;
	    }
	  else
	    {
	      /* Not a number and not a recognized flag word => complain.  */
	      FUNC6 ("Unrecognized or ambiguous flag word: \"%s\".", *argv);
	    }
	}

      /* If any signal numbers or symbol names were found, set flags for
         which signals to apply actions to. */

      for (signum = sigfirst; signum >= 0 && signum <= siglast; signum++)
	{
	  switch ((enum target_signal) signum)
	    {
	    case TARGET_SIGNAL_TRAP:
	    case TARGET_SIGNAL_INT:
	      if (!allsigs && !sigs[signum])
		{
		  if (FUNC14 ("%s is used by the debugger.\n\
Are you sure you want to change it? ", FUNC22 ((enum target_signal) signum)))
		    {
		      sigs[signum] = 1;
		    }
		  else
		    {
		      FUNC13 ("Not confirmed, unchanged.\n");
		      FUNC8 (gdb_stdout);
		    }
		}
	      break;
	    case TARGET_SIGNAL_0:
	    case TARGET_SIGNAL_DEFAULT:
	    case TARGET_SIGNAL_UNKNOWN:
	      /* Make sure that "all" doesn't print these.  */
	      break;
	    default:
	      sigs[signum] = 1;
	      break;
	    }
	}

      argv++;
    }

  FUNC19 (inferior_ptid);

  if (from_tty)
    {
      /* Show the results.  */
      FUNC15 ();
      for (signum = 0; signum < nsigs; signum++)
	{
	  if (sigs[signum])
	    {
	      FUNC16 (signum);
	    }
	}
    }

  FUNC5 (old_chain);
}