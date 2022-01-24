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
struct super_block {int /*<<< orphan*/ * s_bdev; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct super_block*) ; 

__attribute__((used)) static int FUNC2(struct file *filp)
{
	struct super_block *sb = filp->f_path.dentry->d_inode->i_sb;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	/* If a blockdevice-backed filesystem isn't specified, return EINVAL. */
	if (sb->s_bdev == NULL)
		return -EINVAL;

	/* Thaw */
	return FUNC1(sb->s_bdev, sb);
}