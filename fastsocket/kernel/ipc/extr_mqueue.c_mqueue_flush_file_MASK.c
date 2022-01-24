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
struct mqueue_inode_info {scalar_t__ notify_owner; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_3__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 struct mqueue_inode_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct mqueue_inode_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct file *filp, fl_owner_t id)
{
	struct mqueue_inode_info *info = FUNC0(filp->f_path.dentry->d_inode);

	FUNC2(&info->lock);
	if (FUNC4(current) == info->notify_owner)
		FUNC1(info);

	FUNC3(&info->lock);
	return 0;
}