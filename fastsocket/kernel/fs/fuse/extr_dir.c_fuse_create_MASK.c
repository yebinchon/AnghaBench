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
struct nameidata {int flags; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOSYS ; 
 int LOOKUP_OPEN ; 
 int FUNC0 (struct inode*,struct dentry*,int,struct nameidata*) ; 
 int FUNC1 (struct inode*,struct dentry*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inode *dir, struct dentry *entry, int mode,
		       struct nameidata *nd)
{
	if (nd && (nd->flags & LOOKUP_OPEN)) {
		int err = FUNC0(dir, entry, mode, nd);
		if (err != -ENOSYS)
			return err;
		/* Fall back on mknod */
	}
	return FUNC1(dir, entry, mode, 0);
}