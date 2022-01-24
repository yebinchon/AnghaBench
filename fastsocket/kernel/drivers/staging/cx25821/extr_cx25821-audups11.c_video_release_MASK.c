#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct file {struct cx25821_fh* private_data; } ;
struct TYPE_4__ {struct cx25821_fh* read_buf; } ;
struct cx25821_fh {int /*<<< orphan*/  prio; TYPE_1__ vidq; struct cx25821_dev* dev; } ;
struct cx25821_dev {int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOURCE_VIDEO11 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct cx25821_fh*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx25821_fh*) ; 
 scalar_t__ FUNC2 (struct cx25821_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx25821_dev*,struct cx25821_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct cx25821_fh *fh = file->private_data;
	struct cx25821_dev *dev = fh->dev;

	//stop the risc engine and fifo
	//cx_write(channel11->dma_ctl, 0);

	/* stop video capture */
	if (FUNC2(fh, RESOURCE_VIDEO11)) {
		FUNC6(&fh->vidq);
		FUNC3(dev, fh, RESOURCE_VIDEO11);
	}

	if (fh->vidq.read_buf) {
		FUNC0(&fh->vidq, fh->vidq.read_buf);
		FUNC1(fh->vidq.read_buf);
	}

	FUNC5(&fh->vidq);

	FUNC4(&dev->prio, &fh->prio);

	file->private_data = NULL;
	FUNC1(fh);

	return 0;
}