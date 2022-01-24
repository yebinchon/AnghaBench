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
struct iattr {unsigned int ia_valid; struct file* ia_file; scalar_t__ ia_size; } ;
struct file {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 unsigned int ATTR_FILE ; 
 int ATTR_FORCE ; 
 unsigned int ATTR_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct dentry*,struct iattr*) ; 
 int FUNC3 (struct dentry*) ; 

int FUNC4(struct dentry *dentry, loff_t length, unsigned int time_attrs,
	struct file *filp)
{
	int ret;
	struct iattr newattrs;

	/* Not pretty: "inode->i_size" shouldn't really be signed. But it is. */
	if (length < 0)
		return -EINVAL;

	newattrs.ia_size = length;
	newattrs.ia_valid = ATTR_SIZE | time_attrs;
	if (filp) {
		newattrs.ia_file = filp;
		newattrs.ia_valid |= ATTR_FILE;
	}

	/* Remove suid/sgid on truncate too */
	ret = FUNC3(dentry);
	if (ret)
		newattrs.ia_valid |= ret | ATTR_FORCE;

	FUNC0(&dentry->d_inode->i_mutex);
	ret = FUNC2(dentry, &newattrs);
	FUNC1(&dentry->d_inode->i_mutex);
	return ret;
}