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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct dentry {int /*<<< orphan*/ * d_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 struct dentry* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*,char*,char const*,...) ; 
 int /*<<< orphan*/  gfs2_dops ; 
 struct inode* FUNC4 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb, struct dentry **dptr,
			    u64 no_addr, const char *name)
{
	struct gfs2_sbd *sdp = sb->s_fs_info;
	struct dentry *dentry;
	struct inode *inode;

	inode = FUNC4(sb, DT_DIR, no_addr, 0, 0);
	if (FUNC0(inode)) {
		FUNC3(sdp, "can't read in %s inode: %ld\n", name, FUNC1(inode));
		return FUNC1(inode);
	}
	dentry = FUNC2(inode);
	if (!dentry) {
		FUNC3(sdp, "can't alloc %s dentry\n", name);
		FUNC5(inode);
		return -ENOMEM;
	}
	dentry->d_op = &gfs2_dops;
	*dptr = dentry;
	return 0;
}