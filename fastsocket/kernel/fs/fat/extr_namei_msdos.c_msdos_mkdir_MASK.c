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
struct inode {int i_nlink; struct timespec i_ctime; struct timespec i_atime; struct timespec i_mtime; struct super_block* i_sb; } ;
struct fat_slot_info {int /*<<< orphan*/  bh; int /*<<< orphan*/  i_pos; int /*<<< orphan*/  de; } ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 struct timespec CURRENT_TIME_SEC ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int MSDOS_NAME ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int FUNC5 (struct inode*,struct timespec*) ; 
 struct inode* FUNC6 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,unsigned char*,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*) ; 
 int FUNC12 (struct inode*,unsigned char*,int,int,int,struct timespec*,struct fat_slot_info*) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*) ; 

__attribute__((used)) static int FUNC15(struct inode *dir, struct dentry *dentry, int mode)
{
	struct super_block *sb = dir->i_sb;
	struct fat_slot_info sinfo;
	struct inode *inode;
	unsigned char msdos_name[MSDOS_NAME];
	struct timespec ts;
	int err, is_hid, cluster;

	FUNC11(sb);

	err = FUNC13(dentry->d_name.name, dentry->d_name.len,
				msdos_name, &FUNC1(sb)->options);
	if (err)
		goto out;
	is_hid = (dentry->d_name.name[0] == '.') && (msdos_name[0] != '.');
	/* foo vs .foo situation */
	if (!FUNC9(dir, msdos_name, &sinfo)) {
		FUNC3(sinfo.bh);
		err = -EINVAL;
		goto out;
	}

	ts = CURRENT_TIME_SEC;
	cluster = FUNC5(dir, &ts);
	if (cluster < 0) {
		err = cluster;
		goto out;
	}
	err = FUNC12(dir, msdos_name, 1, is_hid, cluster, &ts, &sinfo);
	if (err)
		goto out_free;
	FUNC10(dir);

	inode = FUNC6(sb, sinfo.de, sinfo.i_pos);
	FUNC3(sinfo.bh);
	if (FUNC0(inode)) {
		err = FUNC2(inode);
		/* the directory was completed, just return a error */
		goto out;
	}
	inode->i_nlink = 2;
	inode->i_mtime = inode->i_atime = inode->i_ctime = ts;
	/* timestamp is already written, so mark_inode_dirty() is unneeded. */

	FUNC4(dentry, inode);

	FUNC14(sb);
	FUNC7(sb, dir, inode);
	return 0;

out_free:
	FUNC8(dir, cluster);
out:
	FUNC14(sb);
	return err;
}