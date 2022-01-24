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
struct udf_inode_info {scalar_t__ i_alloc_type; int i_unique; int /*<<< orphan*/  i_location; } ;
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct nameidata {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * a_ops; } ;
struct inode {int i_mode; TYPE_2__* i_sb; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; TYPE_1__ i_data; } ;
struct TYPE_6__ {scalar_t__ impUse; int /*<<< orphan*/  extLocation; void* extLength; } ;
struct fileIdentDesc {TYPE_3__ icb; } ;
struct dentry {int dummy; } ;
struct allocDescImpUse {scalar_t__ impUse; } ;
typedef  void* __le32 ;
struct TYPE_5__ {int s_blocksize; } ;

/* Variables and functions */
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct fileIdentDesc* FUNC8 (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ; 
 int /*<<< orphan*/  udf_adinicb_aops ; 
 int /*<<< orphan*/  udf_aops ; 
 int /*<<< orphan*/  udf_file_inode_operations ; 
 int /*<<< orphan*/  udf_file_operations ; 
 struct inode* FUNC9 (struct inode*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct inode *dir, struct dentry *dentry, int mode,
		      struct nameidata *nd)
{
	struct udf_fileident_bh fibh;
	struct inode *inode;
	struct fileIdentDesc cfi, *fi;
	int err;
	struct udf_inode_info *iinfo;

	FUNC6();
	inode = FUNC9(dir, mode, &err);
	if (!inode) {
		FUNC11();
		return err;
	}

	iinfo = FUNC0(inode);
	if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
		inode->i_data.a_ops = &udf_adinicb_aops;
	else
		inode->i_data.a_ops = &udf_aops;
	inode->i_op = &udf_file_inode_operations;
	inode->i_fop = &udf_file_operations;
	inode->i_mode = mode;
	FUNC7(inode);

	fi = FUNC8(dir, dentry, &fibh, &cfi, &err);
	if (!fi) {
		inode->i_nlink--;
		FUNC7(inode);
		FUNC5(inode);
		FUNC11();
		return err;
	}
	cfi.icb.extLength = FUNC2(inode->i_sb->s_blocksize);
	cfi.icb.extLocation = FUNC3(iinfo->i_location);
	*(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
		FUNC2(iinfo->i_unique & 0x00000000FFFFFFFFUL);
	FUNC10(dir, &cfi, fi, &fibh, NULL, NULL);
	if (FUNC0(dir)->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
		FUNC7(dir);
	if (fibh.sbh != fibh.ebh)
		FUNC1(fibh.ebh);
	FUNC1(fibh.sbh);
	FUNC11();
	FUNC4(dentry, inode);

	return 0;
}