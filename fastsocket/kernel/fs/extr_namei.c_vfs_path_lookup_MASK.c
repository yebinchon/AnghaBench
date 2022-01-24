#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct TYPE_3__ {struct vfsmount* mnt; struct dentry* dentry; } ;
struct nameidata {unsigned int flags; TYPE_1__ root; TYPE_1__ path; scalar_t__ depth; int /*<<< orphan*/  last_type; } ;
struct filename {char const* name; } ;
struct dentry {scalar_t__ d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAST_ROOT ; 
 unsigned int LOOKUP_PARENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct filename*,struct dentry*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct filename*,struct nameidata*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct dentry *dentry, struct vfsmount *mnt,
		    const char *name, unsigned int flags,
		    struct nameidata *nd)
{
	int retval;
	struct filename filename = { .name = name };

	/* same as do_path_lookup */
	nd->last_type = LAST_ROOT;
	nd->flags = flags;
	nd->depth = 0;

	nd->path.dentry = dentry;
	nd->path.mnt = mnt;
	FUNC2(&nd->path);
	nd->root = nd->path;
	FUNC2(&nd->root);

	retval = FUNC4(&filename, nd);
	if (FUNC5(!retval && !FUNC0() && nd->path.dentry &&
				nd->path.dentry->d_inode))
		FUNC1(&filename, nd->path.dentry, flags & LOOKUP_PARENT);

	FUNC3(&nd->root);
	nd->root.mnt = NULL;

	return retval;
}