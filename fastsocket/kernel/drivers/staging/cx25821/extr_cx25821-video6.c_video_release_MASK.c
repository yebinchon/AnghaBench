#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct file {struct cx25821_fh* private_data; } ;
struct TYPE_5__ {struct cx25821_fh* read_buf; } ;
struct cx25821_fh {int /*<<< orphan*/  prio; TYPE_1__ vidq; struct cx25821_dev* dev; } ;
struct cx25821_dev {int /*<<< orphan*/  prio; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOURCE_VIDEO6 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct cx25821_fh*) ; 
 TYPE_3__* channel6 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx25821_fh*) ; 
 scalar_t__ FUNC3 (struct cx25821_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cx25821_dev*,struct cx25821_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct cx25821_fh *fh = file->private_data;
	struct cx25821_dev *dev = fh->dev;

	//stop the risc engine and fifo
	FUNC1(channel6->dma_ctl, 0);	/* FIFO and RISC disable */

	/* stop video capture */
	if (FUNC3(fh, RESOURCE_VIDEO6)) {
		FUNC7(&fh->vidq);
		FUNC4(dev, fh, RESOURCE_VIDEO6);
	}
	if (fh->vidq.read_buf) {
		FUNC0(&fh->vidq, fh->vidq.read_buf);
		FUNC2(fh->vidq.read_buf);
	}

	FUNC6(&fh->vidq);

	FUNC5(&dev->prio, &fh->prio);
	file->private_data = NULL;
	FUNC2(fh);

	return 0;
}