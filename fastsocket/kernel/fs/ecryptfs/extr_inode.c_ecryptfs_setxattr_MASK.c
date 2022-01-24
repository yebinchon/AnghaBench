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
struct dentry {TYPE_2__* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mutex; TYPE_1__* i_op; } ;
struct TYPE_3__ {int (* setxattr ) (struct dentry*,char const*,void const*,size_t,int) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct dentry* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dentry*,char const*,void const*,size_t,int) ; 

int
FUNC4(struct dentry *dentry, const char *name, const void *value,
		  size_t size, int flags)
{
	int rc = 0;
	struct dentry *lower_dentry;

	lower_dentry = FUNC0(dentry);
	if (!lower_dentry->d_inode->i_op->setxattr) {
		rc = -EOPNOTSUPP;
		goto out;
	}
	FUNC1(&lower_dentry->d_inode->i_mutex);
	rc = lower_dentry->d_inode->i_op->setxattr(lower_dentry, name, value,
						   size, flags);
	FUNC2(&lower_dentry->d_inode->i_mutex);
out:
	return rc;
}