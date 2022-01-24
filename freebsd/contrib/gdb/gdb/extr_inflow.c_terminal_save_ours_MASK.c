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
 scalar_t__ our_ttystate ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin_serial ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3 (void)
{
  if (FUNC0 ())
    {
      /* We could just as well copy our_ttystate (if we felt like adding
         a new function serial_copy_tty_state).  */
      if (our_ttystate)
        FUNC2 (our_ttystate);
      our_ttystate = FUNC1 (stdin_serial);
    }
}