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
struct vhost_work {unsigned int queue_seq; int flushing; int /*<<< orphan*/  done; } ;
struct vhost_dev {int /*<<< orphan*/  work_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_dev*,struct vhost_work*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct vhost_dev *dev, struct vhost_work *work)
{
	unsigned seq;
	int flushing;

	FUNC1(&dev->work_lock);
	seq = work->queue_seq;
	work->flushing++;
	FUNC2(&dev->work_lock);
	FUNC4(work->done, FUNC3(dev, work, seq));
	FUNC1(&dev->work_lock);
	flushing = --work->flushing;
	FUNC2(&dev->work_lock);
	FUNC0(flushing < 0);
}