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
struct inode {int i_mode; } ;
struct fuse_conn {int flags; } ;

/* Variables and functions */
 int EACCES ; 
 int FUSE_DEFAULT_PERMISSIONS ; 
 int MAY_ACCESS ; 
 int MAY_EXEC ; 
 scalar_t__ FUNC0 (int) ; 
 int S_IXUGO ; 
 int FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_conn*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC5 (struct inode*,int,int /*<<< orphan*/ *) ; 
 struct fuse_conn* FUNC6 (struct inode*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, int mask)
{
	struct fuse_conn *fc = FUNC6(inode);
	bool refreshed = false;
	int err = 0;

	if (!FUNC2(fc))
		return -EACCES;

	/*
	 * If attributes are needed, refresh them before proceeding
	 */
	if ((fc->flags & FUSE_DEFAULT_PERMISSIONS) ||
	    ((mask & MAY_EXEC) && FUNC0(inode->i_mode))) {
		err = FUNC4(inode, NULL, NULL, &refreshed);
		if (err)
			return err;
	}

	if (fc->flags & FUSE_DEFAULT_PERMISSIONS) {
		err = FUNC5(inode, mask, NULL);

		/* If permission is denied, try to refresh file
		   attributes.  This is also needed, because the root
		   node will at first have no permissions */
		if (err == -EACCES && !refreshed) {
			err = FUNC3(inode, NULL, NULL);
			if (!err)
				err = FUNC5(inode, mask, NULL);
		}

		/* Note: the opposite of the above test does not
		   exist.  So if permissions are revoked this won't be
		   noticed immediately, only after the attribute
		   timeout has expired */
	} else if (mask & MAY_ACCESS) {
		err = FUNC1(inode, mask);
	} else if ((mask & MAY_EXEC) && FUNC0(inode->i_mode)) {
		if (!(inode->i_mode & S_IXUGO)) {
			if (refreshed)
				return -EACCES;

			err = FUNC3(inode, NULL, NULL);
			if (!err && !(inode->i_mode & S_IXUGO))
				return -EACCES;
		}
	}
	return err;
}