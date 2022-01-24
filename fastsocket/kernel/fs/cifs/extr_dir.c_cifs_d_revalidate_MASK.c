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
struct dentry {int d_flags; scalar_t__ d_time; int /*<<< orphan*/  d_lock; scalar_t__ d_inode; } ;

/* Variables and functions */
 int DCACHE_NEED_AUTOMOUNT ; 
 scalar_t__ HZ ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int LOOKUP_CONTINUE ; 
 int LOOKUP_CREATE ; 
 int LOOKUP_PARENT ; 
 int LOOKUP_RENAME_TARGET ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  lookupCacheEnabled ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct dentry *direntry, struct nameidata *nd)
{
	if (direntry->d_inode) {
		if (FUNC1(direntry))
			return 0;
		else {
			/*
			 * If the inode wasn't known to be a dfs entry when
			 * the dentry was instantiated, such as when created
			 * via ->readdir(), it needs to be set now since the
			 * attributes will have been updated by
			 * cifs_revalidate_dentry().
			 */
			if (FUNC0(direntry->d_inode) &&
			   !(direntry->d_flags & DCACHE_NEED_AUTOMOUNT)) {
				FUNC2(&direntry->d_lock);
				direntry->d_flags |= DCACHE_NEED_AUTOMOUNT;
				FUNC3(&direntry->d_lock);
			}

			return 1;
		}
	}

	/*
	 * This may be nfsd (or something), anyway, we can't see the
	 * intent of this. So, since this can be for creation, drop it.
	 */
	if (!nd)
		return 0;

	/*
	 * Drop the negative dentry, in order to make sure to use the
	 * case sensitive name which is specified by user if this is
	 * for creation.
	 */
	if (!(nd->flags & (LOOKUP_CONTINUE | LOOKUP_PARENT))) {
		if (nd->flags & (LOOKUP_CREATE | LOOKUP_RENAME_TARGET))
			return 0;
	}

	if (FUNC4(jiffies, direntry->d_time + HZ) || !lookupCacheEnabled)
		return 0;

	return 1;
}