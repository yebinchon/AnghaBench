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
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NOT_A_BARRIER ; 
 int /*<<< orphan*/  reg_obstack ; 
 int /*<<< orphan*/  reg_pending_barrier ; 
 void* reg_pending_clobbers ; 
 void* reg_pending_sets ; 
 void* reg_pending_uses ; 

void
FUNC1 (void)
{
  reg_pending_sets = FUNC0 (&reg_obstack);
  reg_pending_clobbers = FUNC0 (&reg_obstack);
  reg_pending_uses = FUNC0 (&reg_obstack);
  reg_pending_barrier = NOT_A_BARRIER;
}