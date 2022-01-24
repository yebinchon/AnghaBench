#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_11__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_10__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_9__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int i_mode; int i_blocks; int i_nlink; int /*<<< orphan*/  i_sb; void* i_ino; TYPE_5__ i_data; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; TYPE_4__ i_atime; TYPE_3__ i_mtime; TYPE_2__ i_ctime; } ;
struct hpfs_dirent {int archive; int hidden; int /*<<< orphan*/  creation_date; int /*<<< orphan*/  read_date; int /*<<< orphan*/  write_date; void* fnode; } ;
struct fnode {unsigned int len; void* up; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef  void* fnode_secno ;
struct TYPE_14__ {int /*<<< orphan*/  i_mutex; scalar_t__ i_ea_size; void* i_parent_dir; int /*<<< orphan*/  i_dno; } ;
struct TYPE_13__ {int sb_eas; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 int EPERM ; 
 int S_IFLNK ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,char*,unsigned int,struct hpfs_dirent*,int /*<<< orphan*/ ) ; 
 struct fnode* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,struct buffer_head**) ; 
 int FUNC8 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*,int) ; 
 TYPE_7__* FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 TYPE_6__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct fnode*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpfs_symlink_aops ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct hpfs_dirent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC25 (char const*) ; 
 int /*<<< orphan*/  FUNC26 () ; 

__attribute__((used)) static int FUNC27(struct inode *dir, struct dentry *dentry, const char *symlink)
{
	const char *name = dentry->d_name.name;
	unsigned len = dentry->d_name.len;
	struct buffer_head *bh;
	struct fnode *fnode;
	fnode_secno fno;
	int r;
	struct hpfs_dirent dee;
	struct inode *result;
	int err;
	if ((err = FUNC8((char *)name, &len))) return err==-ENOENT ? -EINVAL : err;
	FUNC18();
	if (FUNC12(dir->i_sb)->sb_eas < 2) {
		FUNC26();
		return -EPERM;
	}
	err = -ENOSPC;
	fnode = FUNC7(dir->i_sb, FUNC10(dir)->i_dno, &fno, &bh);
	if (!fnode)
		goto bail;
	FUNC21(&dee, 0, sizeof dee);
	dee.archive = 1;
	dee.hidden = name[0] == '.';
	dee.fnode = fno;
	dee.creation_date = dee.write_date = dee.read_date = FUNC5(dir->i_sb, FUNC4());

	result = FUNC24(dir->i_sb);
	if (!result)
		goto bail1;
	result->i_ino = fno;
	FUNC11(result);
	FUNC10(result)->i_parent_dir = dir->i_ino;
	result->i_ctime.tv_sec = result->i_mtime.tv_sec = result->i_atime.tv_sec = FUNC17(dir->i_sb, dee.creation_date);
	result->i_ctime.tv_nsec = 0;
	result->i_mtime.tv_nsec = 0;
	result->i_atime.tv_nsec = 0;
	FUNC10(result)->i_ea_size = 0;
	result->i_mode = S_IFLNK | 0777;
	result->i_uid = FUNC2();
	result->i_gid = FUNC1();
	result->i_blocks = 1;
	result->i_nlink = 1;
	result->i_size = FUNC25(symlink);
	result->i_op = &page_symlink_inode_operations;
	result->i_data.a_ops = &hpfs_symlink_aops;

	FUNC22(&FUNC10(dir)->i_mutex);
	r = FUNC6(dir, (char *)name, len, &dee, 0);
	if (r == 1)
		goto bail2;
	if (r == -1) {
		err = -EEXIST;
		goto bail2;
	}
	fnode->len = len;
	FUNC20(fnode->name, name, len > 15 ? 15 : len);
	fnode->up = dir->i_ino;
	FUNC13(result, fnode, "SYMLINK", (char *)symlink, FUNC25(symlink));
	FUNC19(bh);
	FUNC0(bh);

	FUNC15(result);

	FUNC14(result);
	FUNC3(dentry, result);
	FUNC23(&FUNC10(dir)->i_mutex);
	FUNC26();
	return 0;
bail2:
	FUNC23(&FUNC10(dir)->i_mutex);
	FUNC16(result);
bail1:
	FUNC0(bh);
	FUNC9(dir->i_sb, fno, 1);
bail:
	FUNC26();
	return err;
}