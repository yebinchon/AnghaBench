#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vhost_dev {int nvqs; int /*<<< orphan*/ * mm; int /*<<< orphan*/ * worker; int /*<<< orphan*/  work_list; int /*<<< orphan*/ * memory; int /*<<< orphan*/ * log_file; int /*<<< orphan*/ * log_ctx; TYPE_1__* vqs; } ;
struct TYPE_3__ {int /*<<< orphan*/ * call; int /*<<< orphan*/ * call_ctx; int /*<<< orphan*/ * kick; int /*<<< orphan*/ * error; int /*<<< orphan*/ * error_ctx; scalar_t__ ubufs; int /*<<< orphan*/  poll; scalar_t__ handle_kick; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vhost_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct vhost_dev*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

void FUNC13(struct vhost_dev *dev)
{
	int i;
	for (i = 0; i < dev->nvqs; ++i) {
		if (dev->vqs[i].kick && dev->vqs[i].handle_kick) {
			FUNC9(&dev->vqs[i].poll);
			FUNC8(&dev->vqs[i].poll);
		}
		/* Wait for all lower device DMAs done. */
		if (dev->vqs[i].ubufs)
			FUNC10(dev->vqs[i].ubufs);

		/* Signal guest as appropriate. */
		FUNC12(&dev->vqs[i]);

		if (dev->vqs[i].error_ctx)
			FUNC1(dev->vqs[i].error_ctx);
		if (dev->vqs[i].error)
			FUNC2(dev->vqs[i].error);
		if (dev->vqs[i].kick)
			FUNC2(dev->vqs[i].kick);
		if (dev->vqs[i].call_ctx)
			FUNC1(dev->vqs[i].call_ctx);
		if (dev->vqs[i].call)
			FUNC2(dev->vqs[i].call);
		FUNC11(dev, dev->vqs + i);
	}
	FUNC7(dev);
	if (dev->log_ctx)
		FUNC1(dev->log_ctx);
	dev->log_ctx = NULL;
	if (dev->log_file)
		FUNC2(dev->log_file);
	dev->log_file = NULL;
	/* No one will access memory at this point */
	FUNC3(dev->memory);
	dev->memory = NULL;
	FUNC0(!FUNC5(&dev->work_list));
	if (dev->worker) {
		FUNC4(dev->worker);
		dev->worker = NULL;
	}
	if (dev->mm)
		FUNC6(dev->mm);
	dev->mm = NULL;
}