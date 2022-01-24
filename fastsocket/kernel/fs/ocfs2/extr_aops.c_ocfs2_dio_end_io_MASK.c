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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kiocb {TYPE_3__* ki_filp; } ;
struct inode {int /*<<< orphan*/  i_alloc_sem; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct TYPE_6__ {TYPE_2__ f_path; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kiocb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC3 (struct kiocb*) ; 
 int FUNC4 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct kiocb *iocb,
			     loff_t offset,
			     ssize_t bytes,
			     void *private,
			     int ret,
			     bool is_async)
{
	struct inode *inode = iocb->ki_filp->f_path.dentry->d_inode;
	int level;

	/* this io's submitter should not have unlocked this before we could */
	FUNC0(!FUNC3(iocb));

	FUNC2(iocb);

	level = FUNC4(iocb);
	if (!level)
		FUNC6(&inode->i_alloc_sem);
	FUNC5(inode, level);

	if (is_async)
		FUNC1(iocb, ret, 0);
}