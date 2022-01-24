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
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  xattr_root; struct dentry* priv_root; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int ENODATA ; 
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  I_MUTEX_XATTR ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (TYPE_1__*,struct dentry*,int) ; 

__attribute__((used)) static struct dentry *FUNC8(struct super_block *sb, int flags)
{
	struct dentry *privroot = FUNC1(sb)->priv_root;
	struct dentry *xaroot;
	if (!privroot->d_inode)
		return FUNC0(-ENODATA);

	FUNC4(&privroot->d_inode->i_mutex, I_MUTEX_XATTR);

	xaroot = FUNC2(FUNC1(sb)->xattr_root);
	if (!xaroot)
		xaroot = FUNC0(-ENODATA);
	else if (!xaroot->d_inode) {
		int err = -ENODATA;
		if (FUNC6(flags))
			err = FUNC7(privroot->d_inode, xaroot, 0700);
		if (err) {
			FUNC3(xaroot);
			xaroot = FUNC0(err);
		}
	}

	FUNC5(&privroot->d_inode->i_mutex);
	return xaroot;
}