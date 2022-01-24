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
 int /*<<< orphan*/  ACCUMULATE_OUTGOING_ARGS ; 
 int CLEANUP_CROSSJUMP ; 
 int CLEANUP_EXPENSIVE ; 
 int CLEANUP_UPDATE_LIFE ; 
 int /*<<< orphan*/  PROP_POSTRELOAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ flag_crossjumping ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC3 (void)
{
  FUNC2 (PROP_POSTRELOAD);
  FUNC0 (CLEANUP_EXPENSIVE | CLEANUP_UPDATE_LIFE
               | (flag_crossjumping ? CLEANUP_CROSSJUMP : 0));

  /* This is kind of a heuristic.  We need to run combine_stack_adjustments
     even for machines with possibly nonzero RETURN_POPS_ARGS
     and ACCUMULATE_OUTGOING_ARGS.  We expect that only ports having
     push instructions will have popping returns.  */
#ifndef PUSH_ROUNDING
  if (!ACCUMULATE_OUTGOING_ARGS)
#endif
    FUNC1 ();
  return 0;
}