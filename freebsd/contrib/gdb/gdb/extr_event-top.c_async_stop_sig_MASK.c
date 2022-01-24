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
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  gdb_client_data ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  STOP_SIGNAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  handle_stop_sig ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (gdb_client_data arg)
{
  char *prompt = FUNC2 ();
#if STOP_SIGNAL == SIGTSTP
  FUNC7 (SIGTSTP, SIG_DFL);
#if HAVE_SIGPROCMASK
  {
    sigset_t zero;

    sigemptyset (&zero);
    sigprocmask (SIG_SETMASK, &zero, 0);
  }
#elif HAVE_SIGSETMASK
  sigsetmask (0);
#endif
  FUNC4 (FUNC3 (), SIGTSTP);
  FUNC7 (SIGTSTP, handle_stop_sig);
#else
  signal (STOP_SIGNAL, handle_stop_sig);
#endif
  FUNC5 ("%s", prompt);
  FUNC1 (gdb_stdout);

  /* Forget about any previous command -- null line now will do nothing.  */
  FUNC0 ();
}