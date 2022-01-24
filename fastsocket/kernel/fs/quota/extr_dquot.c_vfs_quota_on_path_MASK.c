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
struct super_block {int dummy; } ;
struct path {TYPE_2__* dentry; TYPE_1__* mnt; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_inode; } ;
struct TYPE_3__ {struct super_block* mnt_sb; } ;

/* Variables and functions */
 int DQUOT_LIMITS_ENABLED ; 
 int DQUOT_USAGE_ENABLED ; 
 int EXDEV ; 
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

int FUNC2(struct super_block *sb, int type, int format_id,
		      struct path *path)
{
	int error = FUNC0(path->dentry);
	if (error)
		return error;
	/* Quota file not on the same filesystem? */
	if (path->mnt->mnt_sb != sb)
		error = -EXDEV;
	else
		error = FUNC1(path->dentry->d_inode, type,
					     format_id, DQUOT_USAGE_ENABLED |
					     DQUOT_LIMITS_ENABLED);
	return error;
}