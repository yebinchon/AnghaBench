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
 scalar_t__ UNIX_INFLIGHT_TRIGGER_GC ; 
 int gc_in_progress ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  unix_gc_wait ; 
 scalar_t__ unix_tot_inflight ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(void)
{
	/*
	 * If number of inflight sockets is insane,
	 * force a garbage collect right now.
	 */
	if (unix_tot_inflight > UNIX_INFLIGHT_TRIGGER_GC && !gc_in_progress)
		FUNC0();
	FUNC1(unix_gc_wait, gc_in_progress == false);
}