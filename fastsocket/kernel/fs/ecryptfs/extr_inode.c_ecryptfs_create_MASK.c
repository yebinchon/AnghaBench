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
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int FUNC0 (struct inode*,struct dentry*,int,struct nameidata*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct inode *directory_inode, struct dentry *ecryptfs_dentry,
		int mode, struct nameidata *nd)
{
	int rc;

	/* ecryptfs_do_create() calls ecryptfs_interpose() */
	rc = FUNC0(directory_inode, ecryptfs_dentry, mode, nd);
	if (FUNC3(rc)) {
		FUNC2(KERN_WARNING, "Failed to create file in"
				"lower filesystem\n");
		goto out;
	}
	/* At this point, a file exists on "disk"; we need to make sure
	 * that this on disk file is prepared to be an ecryptfs file */
	rc = FUNC1(ecryptfs_dentry);
out:
	return rc;
}