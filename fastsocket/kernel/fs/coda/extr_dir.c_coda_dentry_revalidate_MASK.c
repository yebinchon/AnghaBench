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
struct dentry {int /*<<< orphan*/  d_count; struct inode* d_inode; } ;
struct coda_inode_info {int c_flags; } ;

/* Variables and functions */
 int C_FLUSH ; 
 int C_PURGE ; 
 int C_VATTR ; 
 struct coda_inode_info* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct dentry *de, struct nameidata *nd)
{
	struct inode *inode = de->d_inode;
	struct coda_inode_info *cii;

	if (!inode)
		return 1;
	FUNC5();
	if (FUNC3(inode))
		goto out;
	if (FUNC4(inode))
		goto bad;

	cii = FUNC0(de->d_inode);
	if (!(cii->c_flags & (C_PURGE | C_FLUSH)))
		goto out;

	FUNC6(de);

	/* propagate for a flush */
	if (cii->c_flags & C_FLUSH) 
		FUNC2(inode, C_FLUSH);

	if (FUNC1(&de->d_count) > 1)
		/* pretend it's valid, but don't change the flags */
		goto out;

	/* clear the flags. */
	cii->c_flags &= ~(C_VATTR | C_PURGE | C_FLUSH);

bad:
	FUNC7();
	return 0;
out:
	FUNC7();
	return 1;
}