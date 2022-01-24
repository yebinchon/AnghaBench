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
struct loops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct loops*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct loops*) ; 

void
FUNC5 (struct loops *loops)
{
  FUNC4 (loops);

  /* For each statement determine the outermost loop in that it is
     invariant and cost for computing the invariant.  */
  FUNC0 ();

  /* For each memory reference determine whether it is possible to hoist it
     out of the loop.  Force the necessary invariants to be moved out of the
     loops as well.  */
  FUNC1 (loops);

  /* Move the expressions that are expensive enough.  */
  FUNC2 ();

  FUNC3 ();
}