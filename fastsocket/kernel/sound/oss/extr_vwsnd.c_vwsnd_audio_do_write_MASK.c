#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int flags; int swb_u_idx; int /*<<< orphan*/ * swbuf; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ vwsnd_port_t ;
struct TYPE_12__ {TYPE_1__ rport; TYPE_1__ wport; } ;
typedef  TYPE_2__ vwsnd_dev_t ;
struct file {int f_mode; int f_flags; TYPE_2__* private_data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_13__ {void* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct file*,char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int DISABLED ; 
 int EAGAIN ; 
 int EFAULT ; 
 int EINVAL ; 
 int ERESTARTSYS ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 void* TASK_RUNNING ; 
 int /*<<< orphan*/  VERIFY_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_4__*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static ssize_t FUNC13(struct file *file,
				    const char *buffer,
				    size_t count,
				    loff_t *ppos)
{
	vwsnd_dev_t *devc = file->private_data;
	vwsnd_port_t *wport = ((file->f_mode & FMODE_WRITE) ?
			       &devc->wport : NULL);
	int ret, nb;

	FUNC0("(file=0x%p, buffer=0x%p, count=%d, ppos=0x%p)\n",
	      file, buffer, count, ppos);

	if (!wport)
		return -EINVAL;

	if (wport->swbuf == NULL) {
		vwsnd_port_t *rport = (file->f_mode & FMODE_READ) ?
			&devc->rport : NULL;
		ret = FUNC7(devc, rport, wport);
		if (ret < 0)
			return ret;
	}
	if (!FUNC3(VERIFY_WRITE, buffer, count))
		return -EFAULT;
	ret = 0;
	while (count) {
		FUNC2(wait, current);
		FUNC4(&wport->queue, &wait);
		while ((nb = FUNC12(wport, 0)) == 0) {
			FUNC10(TASK_INTERRUPTIBLE);
			if (wport->flags & DISABLED ||
			    file->f_flags & O_NONBLOCK) {
				current->state = TASK_RUNNING;
				FUNC8(&wport->queue, &wait);
				return ret ? ret : -EAGAIN;
			}
			FUNC9();
			if (FUNC11(current)) {
				current->state = TASK_RUNNING;
				FUNC8(&wport->queue, &wait);
				return ret ? ret : -ERESTARTSYS;
			}
		}
		current->state = TASK_RUNNING;
		FUNC8(&wport->queue, &wait);
		/* nb bytes are available in userbuf. */
		if (nb > count)
			nb = count;
		FUNC1("nb = %d\n", nb);
		if (FUNC5(wport->swbuf + wport->swb_u_idx, buffer, nb))
			return -EFAULT;
		FUNC6(devc, 0, nb);
		buffer += nb;
		count -= nb;
		ret += nb;
	}
	FUNC1("returning %d\n", ret);
	return ret;
}