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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5 (int regnum)
{
  FUNC2 (regnum >= 0 && regnum < NUM_REGS + NUM_PSEUDO_REGS);
  if (FUNC4 (current_gdbarch))
    return FUNC1 (FUNC3 (current_gdbarch, regnum));
  else
    /* FIXME: cagney/2003-03-01: Once all architectures implement
       gdbarch_register_type(), this entire function can go away.  It
       is made obsolete by register_size().  */
    return FUNC1 (FUNC0 (regnum)); /* OK */
}