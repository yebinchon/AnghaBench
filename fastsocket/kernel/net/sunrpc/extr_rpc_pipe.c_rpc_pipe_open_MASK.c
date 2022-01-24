#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_inode {scalar_t__ nreaders; scalar_t__ nwriters; TYPE_1__* ops; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct file {int f_mode; } ;
struct TYPE_2__ {int (* open_pipe ) (struct inode*) ;} ;

/* Variables and functions */
 int ENXIO ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 struct rpc_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct inode*) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, struct file *filp)
{
	struct rpc_inode *rpci = FUNC0(inode);
	int first_open;
	int res = -ENXIO;

	FUNC1(&inode->i_mutex);
	if (rpci->ops == NULL)
		goto out;
	first_open = rpci->nreaders == 0 && rpci->nwriters == 0;
	if (first_open && rpci->ops->open_pipe) {
		res = rpci->ops->open_pipe(inode);
		if (res)
			goto out;
	}
	if (filp->f_mode & FMODE_READ)
		rpci->nreaders++;
	if (filp->f_mode & FMODE_WRITE)
		rpci->nwriters++;
	res = 0;
out:
	FUNC2(&inode->i_mutex);
	return res;
}