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
struct qnx4_link_info {int dl_inode_ndx; int /*<<< orphan*/  dl_inode_blk; } ;
struct qnx4_inode_entry {int di_status; } ;
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int QNX4_FILE_LINK ; 
 int QNX4_INODES_PER_BLOCK ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct buffer_head* FUNC8 (int,struct inode*,char const*,struct qnx4_inode_entry**,int*) ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

struct dentry * FUNC11(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
	int ino;
	struct qnx4_inode_entry *de;
	struct qnx4_link_info *lnk;
	struct buffer_head *bh;
	const char *name = dentry->d_name.name;
	int len = dentry->d_name.len;
	struct inode *foundinode = NULL;

	FUNC7();
	if (!(bh = FUNC8(len, dir, name, &de, &ino)))
		goto out;
	/* The entry is linked, let's get the real info */
	if ((de->di_status & QNX4_FILE_LINK) == QNX4_FILE_LINK) {
		lnk = (struct qnx4_link_info *) de;
		ino = (FUNC6(lnk->dl_inode_blk) - 1) *
                    QNX4_INODES_PER_BLOCK +
		    lnk->dl_inode_ndx;
	}
	FUNC4(bh);

	foundinode = FUNC9(dir->i_sb, ino);
	if (FUNC1(foundinode)) {
		FUNC10();
		FUNC3(("qnx4: lookup->iget -> error %ld\n",
			   FUNC2(foundinode)));
		return FUNC0(foundinode);
	}
out:
	FUNC10();
	FUNC5(dentry, foundinode);

	return NULL;
}