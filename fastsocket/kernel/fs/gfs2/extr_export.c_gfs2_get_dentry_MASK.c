#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct inode {int /*<<< orphan*/ * d_op; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inum_host {int /*<<< orphan*/  no_addr; int /*<<< orphan*/  no_formal_ino; } ;
struct dentry {int /*<<< orphan*/ * d_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_no_formal_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 int /*<<< orphan*/  GFS2_BLKST_DINODE ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  gfs2_dops ; 
 struct inode* FUNC5 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC6 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC8(struct super_block *sb,
				      struct gfs2_inum_host *inum)
{
	struct gfs2_sbd *sdp = sb->s_fs_info;
	struct inode *inode;
	struct dentry *dentry;

	inode = FUNC5(sb, inum->no_addr, 0);
	if (inode) {
		if (FUNC2(inode)->i_no_formal_ino != inum->no_formal_ino) {
			FUNC7(inode);
			return FUNC1(-ESTALE);
		}
	} else {
		inode = FUNC6(sdp, inum->no_addr,
					    &inum->no_formal_ino,
					    GFS2_BLKST_DINODE);
		if (inode == FUNC1(-ENOENT))
			inode = FUNC5(sb, inum->no_addr, 0);
	}

	if (FUNC3(inode))
		return FUNC0(inode);

	dentry = FUNC4(inode);
	if (!FUNC3(dentry))
		dentry->d_op = &gfs2_dops;
	return dentry;
}