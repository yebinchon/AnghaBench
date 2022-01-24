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
struct msm_sync {int unblock_poll_frame; int /*<<< orphan*/  prev_frame_q_lock; int /*<<< orphan*/  prev_frame_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct msm_sync *sync)
{
	unsigned long flags;
	FUNC0("msm_unblock_poll_frame\n");
	FUNC1(&sync->prev_frame_q_lock, flags);
	sync->unblock_poll_frame = 1;
	FUNC3(&sync->prev_frame_wait);
	FUNC2(&sync->prev_frame_q_lock, flags);
	return 0;
}