#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {TYPE_2__* f_op; } ;
struct autofs_sb_info {int pipefd; int /*<<< orphan*/  wq_mutex; scalar_t__ catatonic; struct file* pipe; int /*<<< orphan*/  oz_pgrp; } ;
struct TYPE_3__ {int pipefd; } ;
struct autofs_dev_ioctl {TYPE_1__ setpipefd; } ;
struct TYPE_4__ {int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EPIPE ; 
 int /*<<< orphan*/  current ; 
 struct file* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct file *fp,
				      struct autofs_sb_info *sbi,
				      struct autofs_dev_ioctl *param)
{
	int pipefd;
	int err = 0;

	if (param->setpipefd.pipefd == -1)
		return -EINVAL;

	pipefd = param->setpipefd.pipefd;

	FUNC2(&sbi->wq_mutex);
	if (!sbi->catatonic) {
		FUNC3(&sbi->wq_mutex);
		return -EBUSY;
	} else {
		struct file *pipe = FUNC0(pipefd);
		if (!pipe->f_op || !pipe->f_op->write) {
			err = -EPIPE;
			FUNC1(pipe);
			goto out;
		}
		sbi->oz_pgrp = FUNC4(current);
		sbi->pipefd = pipefd;
		sbi->pipe = pipe;
		sbi->catatonic = 0;
	}
out:
	FUNC3(&sbi->wq_mutex);
	return err;
}