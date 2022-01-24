#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct quad_buffer_head {int dummy; } ;
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_version; } ;
struct hpfs_inode_info {scalar_t__ i_dno; scalar_t__ i_parent_dir; } ;
struct hpfs_dirent {int namelen; int* name; scalar_t__ fnode; int /*<<< orphan*/  not_8x3; scalar_t__ last; scalar_t__ first; } ;
struct TYPE_9__ {TYPE_3__* external; } ;
struct fnode {TYPE_4__ u; int /*<<< orphan*/  dirflag; } ;
struct TYPE_7__ {TYPE_1__* dentry; } ;
struct file {int f_pos; int /*<<< orphan*/  f_version; TYPE_2__ f_path; } ;
struct buffer_head {int dummy; } ;
typedef  int loff_t ;
typedef  scalar_t__ (* filldir_t ) (void*,char*,int,long,scalar_t__,int /*<<< orphan*/ ) ;
struct TYPE_10__ {int sb_chk; int sb_lowercase; } ;
struct TYPE_8__ {scalar_t__ disk_secno; } ;
struct TYPE_6__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int EFSERROR ; 
 int EIOERROR ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct quad_buffer_head*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,long,...) ; 
 struct hpfs_inode_info* FUNC6 (struct inode*) ; 
 struct fnode* FUNC7 (int /*<<< orphan*/ ,scalar_t__,struct buffer_head**) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int*,int*,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct hpfs_dirent* FUNC13 (struct inode*,long*,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int FUNC16(struct file *filp, void *dirent, filldir_t filldir)
{
	struct inode *inode = filp->f_path.dentry->d_inode;
	struct hpfs_inode_info *hpfs_inode = FUNC6(inode);
	struct quad_buffer_head qbh;
	struct hpfs_dirent *de;
	int lc;
	long old_pos;
	char *tempname;
	int c1, c2 = 0;
	int ret = 0;

	FUNC12();

	if (FUNC8(inode->i_sb)->sb_chk) {
		if (FUNC3(inode->i_sb, inode->i_ino, 1, "dir_fnode")) {
			ret = -EFSERROR;
			goto out;
		}
		if (FUNC3(inode->i_sb, hpfs_inode->i_dno, 4, "dir_dnode")) {
			ret = -EFSERROR;
			goto out;
		}
	}
	if (FUNC8(inode->i_sb)->sb_chk >= 2) {
		struct buffer_head *bh;
		struct fnode *fno;
		int e = 0;
		if (!(fno = FUNC7(inode->i_sb, inode->i_ino, &bh))) {
			ret = -EIOERROR;
			goto out;
		}
		if (!fno->dirflag) {
			e = 1;
			FUNC5(inode->i_sb, "not a directory, fnode %08lx",
					(unsigned long)inode->i_ino);
		}
		if (hpfs_inode->i_dno != fno->u.external[0].disk_secno) {
			e = 1;
			FUNC5(inode->i_sb, "corrupted inode: i_dno == %08x, fnode -> dnode == %08x", hpfs_inode->i_dno, fno->u.external[0].disk_secno);
		}
		FUNC0(bh);
		if (e) {
			ret = -EFSERROR;
			goto out;
		}
	}
	lc = FUNC8(inode->i_sb)->sb_lowercase;
	if (filp->f_pos == 12) { /* diff -r requires this (note, that diff -r */
		filp->f_pos = 13; /* also fails on msdos filesystem in 2.0) */
		goto out;
	}
	if (filp->f_pos == 13) {
		ret = -ENOENT;
		goto out;
	}
	
	while (1) {
		again:
		/* This won't work when cycle is longer than number of dirents
		   accepted by filldir, but what can I do?
		   maybe killall -9 ls helps */
		if (FUNC8(inode->i_sb)->sb_chk)
			if (FUNC9(inode->i_sb, filp->f_pos, &c1, &c2, "hpfs_readdir")) {
				ret = -EFSERROR;
				goto out;
			}
		if (filp->f_pos == 12)
			goto out;
		if (filp->f_pos == 3 || filp->f_pos == 4 || filp->f_pos == 5) {
			FUNC14("HPFS: warning: pos==%d\n",(int)filp->f_pos);
			goto out;
		}
		if (filp->f_pos == 0) {
			if (filldir(dirent, ".", 1, filp->f_pos, inode->i_ino, DT_DIR) < 0)
				goto out;
			filp->f_pos = 11;
		}
		if (filp->f_pos == 11) {
			if (filldir(dirent, "..", 2, filp->f_pos, hpfs_inode->i_parent_dir, DT_DIR) < 0)
				goto out;
			filp->f_pos = 1;
		}
		if (filp->f_pos == 1) {
			filp->f_pos = ((loff_t) FUNC4(inode->i_sb, hpfs_inode->i_dno) << 4) + 1;
			FUNC1(inode, &filp->f_pos);
			filp->f_version = inode->i_version;
		}
		old_pos = filp->f_pos;
		if (!(de = FUNC13(inode, &filp->f_pos, &qbh))) {
			ret = -EIOERROR;
			goto out;
		}
		if (de->first || de->last) {
			if (FUNC8(inode->i_sb)->sb_chk) {
				if (de->first && !de->last && (de->namelen != 2
				    || de ->name[0] != 1 || de->name[1] != 1))
					FUNC5(inode->i_sb, "hpfs_readdir: bad ^A^A entry; pos = %08lx", old_pos);
				if (de->last && (de->namelen != 1 || de ->name[0] != 255))
					FUNC5(inode->i_sb, "hpfs_readdir: bad \\377 entry; pos = %08lx", old_pos);
			}
			FUNC2(&qbh);
			goto again;
		}
		tempname = FUNC10(inode->i_sb, de->name, de->namelen, lc, de->not_8x3);
		if (filldir(dirent, tempname, de->namelen, old_pos, de->fnode, DT_UNKNOWN) < 0) {
			filp->f_pos = old_pos;
			if (tempname != (char *)de->name) FUNC11(tempname);
			FUNC2(&qbh);
			goto out;
		}
		if (tempname != (char *)de->name) FUNC11(tempname);
		FUNC2(&qbh);
	}
out:
	FUNC15();
	return ret;
}