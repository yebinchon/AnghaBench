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
 scalar_t__ flag_non_call_exceptions ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC3 (void)
{
  /* Do a very simple CSE pass over just the hard registers.  */
  FUNC2 (FUNC0 ());
  /* reload_cse_regs can eliminate potentially-trapping MEMs.
     Remove any EH edges associated with them.  */
  if (flag_non_call_exceptions)
    FUNC1 ();
  return 0;
}