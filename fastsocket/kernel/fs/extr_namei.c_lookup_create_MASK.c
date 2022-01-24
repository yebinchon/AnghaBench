#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {size_t len; scalar_t__* name; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
struct TYPE_11__ {TYPE_4__ open; } ;
struct TYPE_9__ {TYPE_2__* dentry; } ;
struct nameidata {scalar_t__ last_type; int flags; TYPE_6__ last; TYPE_5__ intent; TYPE_3__ path; } ;
struct dentry {scalar_t__ d_inode; } ;
struct TYPE_8__ {TYPE_1__* d_inode; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 scalar_t__ LAST_NORM ; 
 int LOOKUP_CREATE ; 
 int LOOKUP_EXCL ; 
 int LOOKUP_PARENT ; 
 int /*<<< orphan*/  O_EXCL ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

struct dentry *FUNC6(struct nameidata *nd, int is_dir)
{
	struct dentry *dentry = FUNC0(-EEXIST);

	FUNC4(&nd->path.dentry->d_inode->i_mutex, I_MUTEX_PARENT);
	/*
	 * Yucky last component or no last component at all?
	 * (foo/., foo/.., /////)
	 */
	if (nd->last_type != LAST_NORM)
		goto fail;
	nd->flags &= ~LOOKUP_PARENT;
	nd->flags |= LOOKUP_CREATE | LOOKUP_EXCL;
	nd->intent.open.flags = O_EXCL;

	/*
	 * Do the final lookup.
	 */
	dentry = FUNC3(nd);
	if (FUNC1(dentry))
		goto fail;

	if (dentry->d_inode)
		goto eexist;
	/*
	 * Special case - lookup gave negative, but... we had foo/bar/
	 * From the vfs_mknod() POV we just have a negative dentry -
	 * all is fine. Let's be bastards - you had / on the end, you've
	 * been asking for (non-existent) directory. -ENOENT for you.
	 */
	if (FUNC5(!is_dir && nd->last.name[nd->last.len])) {
		FUNC2(dentry);
		dentry = FUNC0(-ENOENT);
	}
	return dentry;
eexist:
	FUNC2(dentry);
	dentry = FUNC0(-EEXIST);
fail:
	return dentry;
}