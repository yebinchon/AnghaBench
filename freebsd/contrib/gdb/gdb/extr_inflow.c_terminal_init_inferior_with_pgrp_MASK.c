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
 scalar_t__ FUNC0 () ; 
 int inferior_process_group ; 
 scalar_t__ inferior_ttystate ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin_serial ; 
 int terminal_is_ours ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3 (int pgrp)
{
  if (FUNC0 ())
    {
      /* We could just as well copy our_ttystate (if we felt like
         adding a new function serial_copy_tty_state()).  */
      if (inferior_ttystate)
	FUNC2 (inferior_ttystate);
      inferior_ttystate = FUNC1 (stdin_serial);

#ifdef PROCESS_GROUP_TYPE
      inferior_process_group = pgrp;
#endif

      /* Make sure that next time we call terminal_inferior (which will be
         before the program runs, as it needs to be), we install the new
         process group.  */
      terminal_is_ours = 1;
    }
}