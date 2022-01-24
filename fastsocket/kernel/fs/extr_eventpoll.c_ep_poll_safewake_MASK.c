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
typedef  int /*<<< orphan*/  wait_queue_head_t ;

/* Variables and functions */
 int /*<<< orphan*/  EP_MAX_NESTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  ep_poll_wakeup_proc ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  poll_safewake_ncalls ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(wait_queue_head_t *wq)
{
	int this_cpu = FUNC1();

	FUNC0(&poll_safewake_ncalls, EP_MAX_NESTS,
		       ep_poll_wakeup_proc, NULL, wq, (void *) (long) this_cpu);

	FUNC2();
}