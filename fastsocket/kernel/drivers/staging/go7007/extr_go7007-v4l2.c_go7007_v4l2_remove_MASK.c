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
struct go7007 {scalar_t__ video_dev; int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  spinlock; scalar_t__ streaming; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC1 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(struct go7007 *go)
{
	unsigned long flags;

	FUNC2(&go->hw_lock);
	if (go->streaming) {
		go->streaming = 0;
		FUNC1(go);
		FUNC4(&go->spinlock, flags);
		FUNC0(go);
		FUNC5(&go->spinlock, flags);
	}
	FUNC3(&go->hw_lock);
	if (go->video_dev)
		FUNC6(go->video_dev);
}