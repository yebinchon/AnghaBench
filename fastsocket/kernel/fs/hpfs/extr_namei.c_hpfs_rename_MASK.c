#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct quad_buffer_head {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct hpfs_dirent {int hidden; int /*<<< orphan*/ * name; } ;
struct fnode {int len; int /*<<< orphan*/ * name; int /*<<< orphan*/  up; } ;
struct TYPE_4__ {int len; scalar_t__ name; } ;
struct dentry {struct inode* d_inode; TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  dnode_secno ;
struct TYPE_6__ {int /*<<< orphan*/  i_parent_mutex; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_conv; int /*<<< orphan*/  i_parent_dir; int /*<<< orphan*/  i_dno; } ;
struct TYPE_5__ {int /*<<< orphan*/  sb_conv; } ;

/* Variables and functions */
 int EFSERROR ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct hpfs_dirent*,struct hpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,char*,int,struct hpfs_dirent*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct quad_buffer_head*) ; 
 int FUNC8 (char*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct fnode* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC14 (struct quad_buffer_head*) ; 
 int FUNC15 (struct inode*,int /*<<< orphan*/ ,struct hpfs_dirent*,struct quad_buffer_head*,int) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 struct hpfs_dirent* FUNC20 (struct inode*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 () ; 

__attribute__((used)) static int FUNC27(struct inode *old_dir, struct dentry *old_dentry,
		struct inode *new_dir, struct dentry *new_dentry)
{
	char *old_name = (char *)old_dentry->d_name.name;
	int old_len = old_dentry->d_name.len;
	char *new_name = (char *)new_dentry->d_name.name;
	int new_len = new_dentry->d_name.len;
	struct inode *i = old_dentry->d_inode;
	struct inode *new_inode = new_dentry->d_inode;
	struct quad_buffer_head qbh, qbh1;
	struct hpfs_dirent *dep, *nde;
	struct hpfs_dirent de;
	dnode_secno dno;
	int r;
	struct buffer_head *bh;
	struct fnode *fnode;
	int err;
	if ((err = FUNC8((char *)new_name, &new_len))) return err;
	err = 0;
	FUNC6((char *)old_name, &old_len);

	FUNC19();
	/* order doesn't matter, due to VFS exclusion */
	FUNC24(&FUNC11(i)->i_parent_mutex);
	if (new_inode)
		FUNC24(&FUNC11(new_inode)->i_parent_mutex);
	FUNC24(&FUNC11(old_dir)->i_mutex);
	if (new_dir != old_dir)
		FUNC24(&FUNC11(new_dir)->i_mutex);
	
	/* Erm? Moving over the empty non-busy directory is perfectly legal */
	if (new_inode && FUNC0(new_inode->i_mode)) {
		err = -EINVAL;
		goto end1;
	}

	if (!(dep = FUNC20(old_dir, FUNC11(old_dir)->i_dno, (char *)old_name, old_len, &dno, &qbh))) {
		FUNC10(i->i_sb, "lookup succeeded but map dirent failed");
		err = -ENOENT;
		goto end1;
	}
	FUNC3(&de, dep);
	de.hidden = new_name[0] == '.';

	if (new_inode) {
		int r;
		if ((r = FUNC15(old_dir, dno, dep, &qbh, 1)) != 2) {
			if ((nde = FUNC20(new_dir, FUNC11(new_dir)->i_dno, (char *)new_name, new_len, NULL, &qbh1))) {
				FUNC2(new_inode);
				FUNC3(nde, &de);
				FUNC22(nde->name, new_name, new_len);
				FUNC14(&qbh1);
				FUNC7(&qbh1);
				goto end;
			}
			FUNC10(new_dir->i_sb, "hpfs_rename: could not find dirent");
			err = -EFSERROR;
			goto end1;
		}
		err = r == 2 ? -ENOSPC : r == 1 ? -EFSERROR : 0;
		goto end1;
	}

	if (new_dir == old_dir) FUNC7(&qbh);

	FUNC12(i->i_sb);
	if ((r = FUNC5(new_dir, new_name, new_len, &de, 1))) {
		FUNC17(i->i_sb);
		if (r == -1) FUNC10(new_dir->i_sb, "hpfs_rename: dirent already exists!");
		err = r == 1 ? -ENOSPC : -EFSERROR;
		if (new_dir != old_dir) FUNC7(&qbh);
		goto end1;
	}
	
	if (new_dir == old_dir)
		if (!(dep = FUNC20(old_dir, FUNC11(old_dir)->i_dno, (char *)old_name, old_len, &dno, &qbh))) {
			FUNC17(i->i_sb);
			FUNC10(i->i_sb, "lookup succeeded but map dirent failed at #2");
			err = -ENOENT;
			goto end1;
		}

	if ((r = FUNC15(old_dir, dno, dep, &qbh, 0))) {
		FUNC17(i->i_sb);
		FUNC10(i->i_sb, "hpfs_rename: could not remove dirent");
		err = r == 2 ? -ENOSPC : -EFSERROR;
		goto end1;
	}
	FUNC17(i->i_sb);
	
	end:
	FUNC11(i)->i_parent_dir = new_dir->i_ino;
	if (FUNC0(i->i_mode)) {
		FUNC18(new_dir);
		FUNC4(old_dir);
	}
	if ((fnode = FUNC13(i->i_sb, i->i_ino, &bh))) {
		fnode->up = new_dir->i_ino;
		fnode->len = new_len;
		FUNC22(fnode->name, new_name, new_len>15?15:new_len);
		if (new_len < 15) FUNC23(&fnode->name[new_len], 0, 15 - new_len);
		FUNC21(bh);
		FUNC1(bh);
	}
	FUNC11(i)->i_conv = FUNC16(i->i_sb)->sb_conv;
	FUNC9(i, (char *)new_name, new_len);
end1:
	if (old_dir != new_dir)
		FUNC25(&FUNC11(new_dir)->i_mutex);
	FUNC25(&FUNC11(old_dir)->i_mutex);
	FUNC25(&FUNC11(i)->i_parent_mutex);
	if (new_inode)
		FUNC25(&FUNC11(new_inode)->i_parent_mutex);
	FUNC26();
	return err;
}