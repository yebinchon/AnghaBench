#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nameidata {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_10__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_9__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_8__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int i_mode; int i_nlink; int i_blocks; scalar_t__ i_uid; scalar_t__ i_gid; int /*<<< orphan*/  i_sb; void* i_ino; TYPE_5__ i_data; scalar_t__ i_size; TYPE_4__ i_atime; TYPE_3__ i_mtime; TYPE_2__ i_ctime; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct hpfs_dirent {int read_only; int archive; int hidden; int /*<<< orphan*/  creation_date; int /*<<< orphan*/  read_date; int /*<<< orphan*/  write_date; void* fnode; } ;
struct fnode {unsigned int len; void* up; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef  void* fnode_secno ;
struct TYPE_12__ {int /*<<< orphan*/  i_mutex; scalar_t__ mmu_private; scalar_t__ i_ea_size; void* i_parent_dir; int /*<<< orphan*/  i_dno; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,char*,unsigned int,struct hpfs_dirent*,int /*<<< orphan*/ ) ; 
 struct fnode* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,struct buffer_head**) ; 
 int /*<<< orphan*/  hpfs_aops ; 
 int FUNC8 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,char*,unsigned int) ; 
 int /*<<< orphan*/  hpfs_file_iops ; 
 int /*<<< orphan*/  hpfs_file_ops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*,int) ; 
 TYPE_6__* FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct hpfs_dirent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 

__attribute__((used)) static int FUNC25(struct inode *dir, struct dentry *dentry, int mode, struct nameidata *nd)
{
	const char *name = dentry->d_name.name;
	unsigned len = dentry->d_name.len;
	struct inode *result = NULL;
	struct buffer_head *bh;
	struct fnode *fnode;
	fnode_secno fno;
	int r;
	struct hpfs_dirent dee;
	int err;
	if ((err = FUNC8((char *)name, &len)))
		return err==-ENOENT ? -EINVAL : err;
	FUNC17();
	err = -ENOSPC;
	fnode = FUNC7(dir->i_sb, FUNC11(dir)->i_dno, &fno, &bh);
	if (!fnode)
		goto bail;
	FUNC20(&dee, 0, sizeof dee);
	if (!(mode & 0222)) dee.read_only = 1;
	dee.archive = 1;
	dee.hidden = name[0] == '.';
	dee.fnode = fno;
	dee.creation_date = dee.write_date = dee.read_date = FUNC5(dir->i_sb, FUNC4());

	result = FUNC23(dir->i_sb);
	if (!result)
		goto bail1;
	
	FUNC12(result);
	result->i_ino = fno;
	result->i_mode |= S_IFREG;
	result->i_mode &= ~0111;
	result->i_op = &hpfs_file_iops;
	result->i_fop = &hpfs_file_ops;
	result->i_nlink = 1;
	FUNC9(result, (char *)name, len);
	FUNC11(result)->i_parent_dir = dir->i_ino;
	result->i_ctime.tv_sec = result->i_mtime.tv_sec = result->i_atime.tv_sec = FUNC16(dir->i_sb, dee.creation_date);
	result->i_ctime.tv_nsec = 0;
	result->i_mtime.tv_nsec = 0;
	result->i_atime.tv_nsec = 0;
	FUNC11(result)->i_ea_size = 0;
	if (dee.read_only)
		result->i_mode &= ~0222;
	result->i_blocks = 1;
	result->i_size = 0;
	result->i_data.a_ops = &hpfs_aops;
	FUNC11(result)->mmu_private = 0;

	FUNC21(&FUNC11(dir)->i_mutex);
	r = FUNC6(dir, (char *)name, len, &dee, 0);
	if (r == 1)
		goto bail2;
	if (r == -1) {
		err = -EEXIST;
		goto bail2;
	}
	fnode->len = len;
	FUNC19(fnode->name, name, len > 15 ? 15 : len);
	fnode->up = dir->i_ino;
	FUNC18(bh);
	FUNC0(bh);

	FUNC14(result);

	if (result->i_uid != FUNC2() ||
	    result->i_gid != FUNC1() ||
	    result->i_mode != (mode | S_IFREG)) {
		result->i_uid = FUNC2();
		result->i_gid = FUNC1();
		result->i_mode = mode | S_IFREG;
		FUNC13(result);
	}
	FUNC3(dentry, result);
	FUNC22(&FUNC11(dir)->i_mutex);
	FUNC24();
	return 0;

bail2:
	FUNC22(&FUNC11(dir)->i_mutex);
	FUNC15(result);
bail1:
	FUNC0(bh);
	FUNC10(dir->i_sb, fno, 1);
bail:
	FUNC24();
	return err;
}