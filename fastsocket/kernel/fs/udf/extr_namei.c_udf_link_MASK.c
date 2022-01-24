#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct logicalVolIntegrityDesc {scalar_t__ logicalVolContentsUse; } ;
struct logicalVolHeaderDesc {int /*<<< orphan*/  uniqueID; } ;
struct inode {int i_nlink; int /*<<< orphan*/  i_count; TYPE_2__* i_sb; int /*<<< orphan*/  i_ctime; } ;
struct TYPE_6__ {scalar_t__ impUse; int /*<<< orphan*/  extLocation; void* extLength; } ;
struct fileIdentDesc {TYPE_1__ icb; } ;
struct dentry {struct inode* d_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct allocDescImpUse {scalar_t__ impUse; } ;
typedef  void* __le32 ;
struct TYPE_9__ {scalar_t__ i_alloc_type; int /*<<< orphan*/  i_location; } ;
struct TYPE_8__ {struct buffer_head* s_lvid_bh; } ;
struct TYPE_7__ {int s_blocksize; } ;

/* Variables and functions */
 int EMLINK ; 
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 TYPE_5__* FUNC0 (struct inode*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 struct fileIdentDesc* FUNC14 (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static int FUNC17(struct dentry *old_dentry, struct inode *dir,
		    struct dentry *dentry)
{
	struct inode *inode = old_dentry->d_inode;
	struct udf_fileident_bh fibh;
	struct fileIdentDesc cfi, *fi;
	int err;
	struct buffer_head *bh;

	FUNC11();
	if (inode->i_nlink >= (256 << sizeof(inode->i_nlink)) - 1) {
		FUNC16();
		return -EMLINK;
	}

	fi = FUNC14(dir, dentry, &fibh, &cfi, &err);
	if (!fi) {
		FUNC16();
		return err;
	}
	cfi.icb.extLength = FUNC4(inode->i_sb->s_blocksize);
	cfi.icb.extLocation = FUNC6(FUNC0(inode)->i_location);
	bh = FUNC1(inode->i_sb)->s_lvid_bh;
	if (bh) {
		struct logicalVolIntegrityDesc *lvid =
				(struct logicalVolIntegrityDesc *)bh->b_data;
		struct logicalVolHeaderDesc *lvhd;
		uint64_t uniqueID;
		lvhd = (struct logicalVolHeaderDesc *)
				(lvid->logicalVolContentsUse);
		uniqueID = FUNC10(lvhd->uniqueID);
		*(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
			FUNC4(uniqueID & 0x00000000FFFFFFFFUL);
		if (!(++uniqueID & 0x00000000FFFFFFFFUL))
			uniqueID += 16;
		lvhd->uniqueID = FUNC5(uniqueID);
		FUNC12(bh);
	}
	FUNC15(dir, &cfi, fi, &fibh, NULL, NULL);
	if (FUNC0(dir)->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
		FUNC13(dir);

	if (fibh.sbh != fibh.ebh)
		FUNC3(fibh.ebh);
	FUNC3(fibh.sbh);
	FUNC9(inode);
	inode->i_ctime = FUNC7(inode->i_sb);
	FUNC13(inode);
	FUNC2(&inode->i_count);
	FUNC8(dentry, inode);
	FUNC16();

	return 0;
}