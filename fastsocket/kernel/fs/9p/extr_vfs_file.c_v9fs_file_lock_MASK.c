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
struct inode {int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_mapping; } ;
struct file_lock {scalar_t__ fl_type; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int ENOLCK ; 
 scalar_t__ F_UNLCK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct file*,struct file_lock*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct file *filp, int cmd, struct file_lock *fl)
{
	int res = 0;
	struct inode *inode = filp->f_path.dentry->d_inode;

	FUNC2(P9_DEBUG_VFS, "filp: %p lock: %p\n", filp, fl);

	/* No mandatory locks */
	if (FUNC3(inode))
		return -ENOLCK;

	if ((FUNC0(cmd) || FUNC1(cmd)) && fl->fl_type != F_UNLCK) {
		FUNC4(inode->i_mapping);
		FUNC5(&inode->i_data, 0, -1);
	}

	return res;
}