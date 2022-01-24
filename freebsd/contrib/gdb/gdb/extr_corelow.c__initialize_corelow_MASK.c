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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  core_ops ; 
 int /*<<< orphan*/  coreops_suppress_target ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2 (void)
{
  FUNC1 ();

  if (!coreops_suppress_target)
    FUNC0 (&core_ops);
}