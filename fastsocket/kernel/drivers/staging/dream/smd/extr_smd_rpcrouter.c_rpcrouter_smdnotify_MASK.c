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
 unsigned int SMD_EVENT_DATA ; 
 scalar_t__ rpcrouter_need_len ; 
 int /*<<< orphan*/  rpcrouter_wake_lock ; 
 int /*<<< orphan*/  smd_channel ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smd_wait ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *_dev, unsigned event)
{
	if (event != SMD_EVENT_DATA)
		return;

	if (FUNC0(smd_channel) >= rpcrouter_need_len)
		FUNC1(&rpcrouter_wake_lock);
	FUNC2(&smd_wait);
}