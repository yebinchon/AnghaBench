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
struct xenbus_file_priv {int /*<<< orphan*/  msgbuffer_mutex; int /*<<< orphan*/  reply_mutex; int /*<<< orphan*/  read_waitq; int /*<<< orphan*/  read_buffers; int /*<<< orphan*/  watches; int /*<<< orphan*/  transactions; } ;
struct inode {int dummy; } ;
struct file {struct xenbus_file_priv* private_data; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct xenbus_file_priv* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct file*) ; 
 scalar_t__ xen_store_evtchn ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct xenbus_file_priv *u;

	if (xen_store_evtchn == 0)
		return -ENOENT;

	FUNC4(inode, filp);

	u = FUNC2(sizeof(*u), GFP_KERNEL);
	if (u == NULL)
		return -ENOMEM;

	FUNC0(&u->transactions);
	FUNC0(&u->watches);
	FUNC0(&u->read_buffers);
	FUNC1(&u->read_waitq);

	FUNC3(&u->reply_mutex);
	FUNC3(&u->msgbuffer_mutex);

	filp->private_data = u;

	return 0;
}