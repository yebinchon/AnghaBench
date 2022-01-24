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
struct vhost_work {int /*<<< orphan*/  queue_seq; int /*<<< orphan*/  node; } ;
struct vhost_dev {int /*<<< orphan*/  work_lock; int /*<<< orphan*/  worker; int /*<<< orphan*/  work_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct vhost_dev *dev,
				    struct vhost_work *work)
{
	unsigned long flags;

	FUNC2(&dev->work_lock, flags);
	if (FUNC1(&work->node)) {
		FUNC0(&work->node, &dev->work_list);
		work->queue_seq++;
		FUNC4(dev->worker);
	}
	FUNC3(&dev->work_lock, flags);
}