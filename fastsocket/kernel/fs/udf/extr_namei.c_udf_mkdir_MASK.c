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
struct udf_inode_info {int i_unique; int /*<<< orphan*/  i_location; } ;
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct inode {int i_nlink; int i_mode; TYPE_1__* i_sb; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct TYPE_4__ {scalar_t__ impUse; void* extLocation; void* extLength; } ;
struct fileIdentDesc {int fileCharacteristics; TYPE_2__ icb; } ;
struct dentry {int dummy; } ;
struct allocDescImpUse {scalar_t__ impUse; } ;
typedef  void* __le32 ;
struct TYPE_3__ {int s_blocksize; } ;

/* Variables and functions */
 int EIO ; 
 int EMLINK ; 
 int FID_FILE_CHAR_DIRECTORY ; 
 int FID_FILE_CHAR_PARENT ; 
 int S_IFDIR ; 
 int S_ISGID ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct fileIdentDesc* FUNC9 (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ; 
 int /*<<< orphan*/  udf_dir_inode_operations ; 
 int /*<<< orphan*/  udf_dir_operations ; 
 struct inode* FUNC10 (struct inode*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct inode *dir, struct dentry *dentry, int mode)
{
	struct inode *inode;
	struct udf_fileident_bh fibh;
	struct fileIdentDesc cfi, *fi;
	int err;
	struct udf_inode_info *dinfo = FUNC0(dir);
	struct udf_inode_info *iinfo;

	FUNC7();
	err = -EMLINK;
	if (dir->i_nlink >= (256 << sizeof(dir->i_nlink)) - 1)
		goto out;

	err = -EIO;
	inode = FUNC10(dir, S_IFDIR, &err);
	if (!inode)
		goto out;

	iinfo = FUNC0(inode);
	inode->i_op = &udf_dir_inode_operations;
	inode->i_fop = &udf_dir_operations;
	fi = FUNC9(inode, NULL, &fibh, &cfi, &err);
	if (!fi) {
		inode->i_nlink--;
		FUNC8(inode);
		FUNC6(inode);
		goto out;
	}
	inode->i_nlink = 2;
	cfi.icb.extLength = FUNC2(inode->i_sb->s_blocksize);
	cfi.icb.extLocation = FUNC3(dinfo->i_location);
	*(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
		FUNC2(dinfo->i_unique & 0x00000000FFFFFFFFUL);
	cfi.fileCharacteristics =
			FID_FILE_CHAR_DIRECTORY | FID_FILE_CHAR_PARENT;
	FUNC11(inode, &cfi, fi, &fibh, NULL, NULL);
	FUNC1(fibh.sbh);
	inode->i_mode = S_IFDIR | mode;
	if (dir->i_mode & S_ISGID)
		inode->i_mode |= S_ISGID;
	FUNC8(inode);

	fi = FUNC9(dir, dentry, &fibh, &cfi, &err);
	if (!fi) {
		inode->i_nlink = 0;
		FUNC8(inode);
		FUNC6(inode);
		goto out;
	}
	cfi.icb.extLength = FUNC2(inode->i_sb->s_blocksize);
	cfi.icb.extLocation = FUNC3(iinfo->i_location);
	*(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
		FUNC2(iinfo->i_unique & 0x00000000FFFFFFFFUL);
	cfi.fileCharacteristics |= FID_FILE_CHAR_DIRECTORY;
	FUNC11(dir, &cfi, fi, &fibh, NULL, NULL);
	FUNC5(dir);
	FUNC8(dir);
	FUNC4(dentry, inode);
	if (fibh.sbh != fibh.ebh)
		FUNC1(fibh.ebh);
	FUNC1(fibh.sbh);
	err = 0;

out:
	FUNC12();
	return err;
}