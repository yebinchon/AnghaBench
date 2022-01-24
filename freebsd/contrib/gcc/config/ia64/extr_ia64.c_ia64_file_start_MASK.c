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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ flag_var_tracking ; 
 scalar_t__ ia64_flag_var_tracking ; 

__attribute__((used)) static void
FUNC2 (void)
{
  /* Variable tracking should be run after all optimizations which change order
     of insns.  It also needs a valid CFG.  This can't be done in
     ia64_override_options, because flag_var_tracking is finalized after
     that.  */
  ia64_flag_var_tracking = flag_var_tracking;
  flag_var_tracking = 0;

  FUNC0 ();
  FUNC1 ();
}