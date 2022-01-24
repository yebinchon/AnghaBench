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
struct ocfs2_security_xattr_info {int /*<<< orphan*/  value_len; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct inode *inode,
			    struct inode *dir,
			    struct ocfs2_security_xattr_info *si)
{
	/* check whether ocfs2 support feature xattr */
	if (!FUNC1(FUNC0(dir->i_sb)))
		return -EOPNOTSUPP;
	return FUNC2(inode, dir, &si->name, &si->value,
					    &si->value_len);
}