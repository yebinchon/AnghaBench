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
 scalar_t__ async_command_editing_p ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  input_handler ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 

void
FUNC10 (void)
{
  int length;
  char *a_prompt;
  char *gdb_prompt = FUNC3 ();

  /* If we are using readline, set things up and display the first
     prompt, otherwise just print the prompt. */
  if (async_command_editing_p)
    {
      /* Tell readline what the prompt to display is and what function it
         will need to call after a whole line is read. This also displays
         the first prompt. */
      length = FUNC8 (FUNC0 (0)) + FUNC8 (gdb_prompt) + FUNC8 (FUNC1 (0)) + 1;
      a_prompt = (char *) FUNC9 (length);
      FUNC7 (a_prompt, FUNC0 (0));
      FUNC6 (a_prompt, gdb_prompt);
      FUNC6 (a_prompt, FUNC1 (0));
      FUNC4 (a_prompt, input_handler);
    }
  else
    FUNC2 (0);

  /* Now it's time to start the event loop. */
  FUNC5 ();
}