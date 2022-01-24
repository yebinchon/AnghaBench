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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int inf_mode_valid ; 
 int inf_terminal_mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int terminal_is_ours ; 

__attribute__((used)) static void
FUNC5 (void)
{
  /* Switch to cooked mode on the gdb terminal and save the inferior
     terminal mode to be restored when it is resumed */
  if (!terminal_is_ours)
  {
    inf_terminal_mode = FUNC0 (0, 0);
    if (inf_terminal_mode != -1)
      inf_mode_valid = 1;
    else
      /* If device_mode returned -1, we don't know what happens with
	 handle 0 anymore, so make the info invalid.  */
      inf_mode_valid = 0;
    terminal_is_ours = 1;

    /* Restore debugger's standard handles.  */
    errno = 0;
    if (FUNC3 (&child_cmd) == -1)
    {
      FUNC2 (&child_cmd);
      FUNC1 ("Cannot redirect standard handles for debugger: %s.",
	     FUNC4 (errno));
    }
  }
}