#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* swstate; } ;
typedef  TYPE_1__ vwsnd_port_t ;
struct TYPE_9__ {int open_mode; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  io_mutex; TYPE_1__ wport; TYPE_1__ rport; } ;
typedef  TYPE_2__ vwsnd_dev_t ;
struct inode {int dummy; } ;
struct file {int f_mode; scalar_t__ private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DEC_USE_COUNT ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 void* SW_OFF ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct file *file)
{
	vwsnd_dev_t *devc = (vwsnd_dev_t *) file->private_data;
	vwsnd_port_t *wport = NULL, *rport = NULL;
	int err = 0;

	FUNC2();
	FUNC3(&devc->io_mutex);
	{
		FUNC0("(inode=0x%p, file=0x%p)\n", inode, file);

		if (file->f_mode & FMODE_READ)
			rport = &devc->rport;
		if (file->f_mode & FMODE_WRITE) {
			wport = &devc->wport;
			FUNC5(devc);
			FUNC7(devc);
		}
		FUNC6(devc, rport, wport);
		if (rport)
			rport->swstate = SW_OFF;
		if (wport)
			wport->swstate = SW_OFF;
	}
	FUNC4(&devc->io_mutex);

	FUNC3(&devc->open_mutex);
	{
		devc->open_mode &= ~file->f_mode;
	}
	FUNC4(&devc->open_mutex);
	FUNC9(&devc->open_wait);
	DEC_USE_COUNT;
	FUNC1();
	FUNC8();
	return err;
}