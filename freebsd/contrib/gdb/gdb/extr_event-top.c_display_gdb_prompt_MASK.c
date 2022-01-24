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

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ async_command_editing_p ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 char* FUNC6 () ; 
 int /*<<< orphan*/  input_handler ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (char*) ; 
 scalar_t__ sync_execution ; 
 scalar_t__ target_executing ; 

void
FUNC12 (char *new_prompt)
{
  int prompt_length = 0;
  char *gdb_prompt = FUNC6 ();

  /* Each interpreter has its own rules on displaying the command
     prompt.  */
  if (!FUNC3 ())
    return;

  if (target_executing && sync_execution)
    {
      /* This is to trick readline into not trying to display the
         prompt.  Even though we display the prompt using this
         function, readline still tries to do its own display if we
         don't call rl_callback_handler_install and
         rl_callback_handler_remove (which readline detects because a
         global variable is not set). If readline did that, it could
         mess up gdb signal handlers for SIGINT.  Readline assumes
         that between calls to rl_set_signals and rl_clear_signals gdb
         doesn't do anything with the signal handlers. Well, that's
         not the case, because when the target executes we change the
         SIGINT signal handler. If we allowed readline to display the
         prompt, the signal handler change would happen exactly
         between the calls to the above two functions.
         Calling rl_callback_handler_remove(), does the job. */

      FUNC8 ();
      return;
    }

  if (!new_prompt)
    {
      /* Just use the top of the prompt stack. */
      prompt_length = FUNC11 (FUNC0 (0)) +
	FUNC11 (FUNC1 (0)) +
	FUNC11 (gdb_prompt) + 1;

      new_prompt = (char *) FUNC2 (prompt_length);

      /* Prefix needs to have new line at end. */
      FUNC10 (new_prompt, FUNC0 (0));
      FUNC9 (new_prompt, gdb_prompt);
      /* Suffix needs to have a new line at end and \032 \032 at
         beginning. */
      FUNC9 (new_prompt, FUNC1 (0));
    }

  if (async_command_editing_p)
    {
      FUNC8 ();
      FUNC7 (new_prompt, input_handler);
    }
  /* new_prompt at this point can be the top of the stack or the one passed in */
  else if (new_prompt)
    {
      /* Don't use a _filtered function here.  It causes the assumed
         character position to be off, since the newline we read from
         the user is not accounted for.  */
      FUNC4 (new_prompt, gdb_stdout);
      FUNC5 (gdb_stdout);
    }
}