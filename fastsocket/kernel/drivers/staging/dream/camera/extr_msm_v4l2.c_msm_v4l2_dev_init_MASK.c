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
struct msm_v4l2_device {int /*<<< orphan*/  read_queue; int /*<<< orphan*/  read_queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct msm_v4l2_device *pmsm_v4l2_dev)
{
	pmsm_v4l2_dev->read_queue_lock =
	    FUNC1(pmsm_v4l2_dev->read_queue_lock);
	FUNC0(&pmsm_v4l2_dev->read_queue);
}