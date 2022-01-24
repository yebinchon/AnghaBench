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
struct udf_inode_info {int i_unique; scalar_t__ i_alloc_type; int /*<<< orphan*/  i_location; } ;
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_uid; } ;
struct TYPE_4__ {scalar_t__ impUse; int /*<<< orphan*/  extLocation; void* extLength; } ;
struct fileIdentDesc {TYPE_2__ icb; } ;
struct dentry {int dummy; } ;
struct allocDescImpUse {scalar_t__ impUse; } ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  void* __le32 ;
struct TYPE_3__ {int s_blocksize; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct fileIdentDesc* FUNC11 (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ; 
 struct inode* FUNC12 (struct inode*,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int FUNC15(struct inode *dir, struct dentry *dentry, int mode,
		     dev_t rdev)
{
	struct inode *inode;
	struct udf_fileident_bh fibh;
	struct fileIdentDesc cfi, *fi;
	int err;
	struct udf_inode_info *iinfo;

	if (!FUNC10(rdev))
		return -EINVAL;

	FUNC8();
	err = -EIO;
	inode = FUNC12(dir, mode, &err);
	if (!inode)
		goto out;

	iinfo = FUNC0(inode);
	inode->i_uid = FUNC4();
	FUNC6(inode, mode, rdev);
	fi = FUNC11(dir, dentry, &fibh, &cfi, &err);
	if (!fi) {
		inode->i_nlink--;
		FUNC9(inode);
		FUNC7(inode);
		FUNC14();
		return err;
	}
	cfi.icb.extLength = FUNC2(inode->i_sb->s_blocksize);
	cfi.icb.extLocation = FUNC3(iinfo->i_location);
	*(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
		FUNC2(iinfo->i_unique & 0x00000000FFFFFFFFUL);
	FUNC13(dir, &cfi, fi, &fibh, NULL, NULL);
	if (FUNC0(dir)->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
		FUNC9(dir);
	FUNC9(inode);

	if (fibh.sbh != fibh.ebh)
		FUNC1(fibh.ebh);
	FUNC1(fibh.sbh);
	FUNC5(dentry, inode);
	err = 0;

out:
	FUNC14();
	return err;
}