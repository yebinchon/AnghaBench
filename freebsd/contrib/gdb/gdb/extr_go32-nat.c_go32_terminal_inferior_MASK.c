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
 int /*<<< orphan*/  child_cmd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ inf_mode_valid ; 
 int /*<<< orphan*/  inf_terminal_mode ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ terminal_is_ours ; 

__attribute__((used)) static void
FUNC5 (void)
{
  /* Redirect standard handles as child wants them.  */
  errno = 0;
  if (FUNC2 (&child_cmd) == -1)
  {
    FUNC3 (&child_cmd);
    FUNC1 ("Cannot redirect standard handles for program: %s.",
	   FUNC4 (errno));
  }
  /* set the console device of the inferior to whatever mode
     (raw or cooked) we found it last time */
  if (terminal_is_ours)
  {
    if (inf_mode_valid)
      FUNC0 (0, inf_terminal_mode);
    terminal_is_ours = 0;
  }
}