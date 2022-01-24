#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {int i_nlink; struct timespec i_ctime; struct timespec i_atime; struct timespec i_mtime; int /*<<< orphan*/  i_version; struct super_block* i_sb; } ;
struct fat_slot_info {int /*<<< orphan*/  bh; int /*<<< orphan*/  i_pos; int /*<<< orphan*/  de; } ;
struct dentry {TYPE_2__* d_parent; int /*<<< orphan*/  d_time; int /*<<< orphan*/  d_name; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_version; } ;

/* Variables and functions */
 struct timespec CURRENT_TIME_SEC ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int FUNC4 (struct inode*,struct timespec*) ; 
 struct inode* FUNC5 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ *,int,int,struct timespec*,struct fat_slot_info*) ; 

__attribute__((used)) static int FUNC11(struct inode *dir, struct dentry *dentry, int mode)
{
	struct super_block *sb = dir->i_sb;
	struct inode *inode;
	struct fat_slot_info sinfo;
	struct timespec ts;
	int err, cluster;

	FUNC8(sb);

	ts = CURRENT_TIME_SEC;
	cluster = FUNC4(dir, &ts);
	if (cluster < 0) {
		err = cluster;
		goto out;
	}
	err = FUNC10(dir, &dentry->d_name, 1, cluster, &ts, &sinfo);
	if (err)
		goto out_free;
	dir->i_version++;
	FUNC7(dir);

	inode = FUNC5(sb, sinfo.de, sinfo.i_pos);
	FUNC2(sinfo.bh);
	if (FUNC0(inode)) {
		err = FUNC1(inode);
		/* the directory was completed, just return a error */
		goto out;
	}
	inode->i_version++;
	inode->i_nlink = 2;
	inode->i_mtime = inode->i_atime = inode->i_ctime = ts;
	/* timestamp is already written, so mark_inode_dirty() is unneeded. */

	dentry->d_time = dentry->d_parent->d_inode->i_version;
	FUNC3(dentry, inode);

	FUNC9(sb);
	return 0;

out_free:
	FUNC6(dir, cluster);
out:
	FUNC9(sb);
	return err;
}