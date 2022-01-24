#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {long longint; } ;
struct continuation_arg {TYPE_1__ data; struct continuation_arg* next; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct continuation_arg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  command_line_handler_continuation ; 
 int /*<<< orphan*/  FUNC3 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 long FUNC5 () ; 
 scalar_t__ instream ; 
 char* lim_at_start ; 
 struct cleanup* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_cleanup ; 
 int /*<<< orphan*/  FUNC7 (char*,long,char,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 scalar_t__ quit_flag ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ stdin ; 
 int /*<<< orphan*/  stop_bpstat ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ target_executing ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13 (char *command)
{
  struct cleanup *old_chain;
  int stdin_is_tty = FUNC0 (stdin);
  struct continuation_arg *arg1;
  struct continuation_arg *arg2;
  long time_at_cmd_start;
#ifdef HAVE_SBRK
  long space_at_cmd_start = 0;
#endif
  extern int display_time;
  extern int display_space;

  quit_flag = 0;
  if (instream == stdin && stdin_is_tty)
    FUNC9 ();
  old_chain = FUNC6 (null_cleanup, 0);

  /* If readline returned a NULL command, it means that the 
     connection with the terminal is gone. This happens at the
     end of a testsuite run, after Expect has hung up 
     but GDB is still alive. In such a case, we just quit gdb
     killing the inferior program too. */
  if (command == 0)
    FUNC8 ((char *) 0, stdin == instream);

  time_at_cmd_start = FUNC5 ();

  if (display_space)
    {
#ifdef HAVE_SBRK
      char *lim = (char *) sbrk (0);
      space_at_cmd_start = lim - lim_at_start;
#endif
    }

  FUNC4 (command, instream == stdin);

  /* Set things up for this function to be compete later, once the
     execution has completed, if we are doing an execution command,
     otherwise, just go ahead and finish. */
  if (FUNC11 () && target_executing)
    {
      arg1 =
	(struct continuation_arg *) FUNC12 (sizeof (struct continuation_arg));
      arg2 =
	(struct continuation_arg *) FUNC12 (sizeof (struct continuation_arg));
      arg1->next = arg2;
      arg2->next = NULL;
      arg1->data.longint = time_at_cmd_start;
#ifdef HAVE_SBRK
      arg2->data.longint = space_at_cmd_start;
#endif
      FUNC1 (command_line_handler_continuation, arg1);
    }

  /* Do any commands attached to breakpoint we stopped at. Only if we
     are always running synchronously. Or if we have just executed a
     command that doesn't start the target. */
  if (!FUNC11 () || !target_executing)
    {
      FUNC2 (&stop_bpstat);
      FUNC3 (old_chain);

      if (display_time)
	{
	  long cmd_time = FUNC5 () - time_at_cmd_start;

	  FUNC7 ("Command execution time: %ld.%06ld\n",
			     cmd_time / 1000000, cmd_time % 1000000);
	}

      if (display_space)
	{
#ifdef HAVE_SBRK
	  char *lim = (char *) sbrk (0);
	  long space_now = lim - lim_at_start;
	  long space_diff = space_now - space_at_cmd_start;

	  printf_unfiltered ("Space used: %ld (%c%ld for this command)\n",
			     space_now,
			     (space_diff >= 0 ? '+' : '-'),
			     space_diff);
#endif
	}
    }
}