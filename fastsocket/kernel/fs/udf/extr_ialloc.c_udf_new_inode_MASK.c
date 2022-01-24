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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct udf_sb_info {scalar_t__ s_udfrev; int /*<<< orphan*/  s_alloc_mutex; TYPE_2__* s_lvid_bh; } ;
struct TYPE_6__ {int logicalBlockNum; int /*<<< orphan*/  partitionReferenceNum; } ;
struct TYPE_4__ {void* i_data; } ;
struct udf_inode_info {int i_efe; int i_unique; int /*<<< orphan*/  i_crtime; int /*<<< orphan*/  i_alloc_type; scalar_t__ i_use; scalar_t__ i_lenAlloc; scalar_t__ i_lenEAttr; TYPE_3__ i_location; TYPE_1__ i_ext; } ;
struct super_block {scalar_t__ s_blocksize; } ;
struct logicalVolIntegrityDescImpUse {int /*<<< orphan*/  numFiles; int /*<<< orphan*/  numDirs; } ;
struct logicalVolIntegrityDesc {scalar_t__ logicalVolContentsUse; } ;
struct logicalVolHeaderDesc {int /*<<< orphan*/  uniqueID; } ;
struct inode {int i_mode; scalar_t__ i_nlink; int /*<<< orphan*/  i_flags; struct super_block* i_sb; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; scalar_t__ i_blocks; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct fileEntry {int dummy; } ;
struct extendedFileEntry {int dummy; } ;
struct TYPE_5__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int EDQUOT ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ICBTAG_FLAG_AD_IN_ICB ; 
 int /*<<< orphan*/  ICBTAG_FLAG_AD_LONG ; 
 int /*<<< orphan*/  ICBTAG_FLAG_AD_SHORT ; 
 scalar_t__ FUNC0 (int) ; 
 int S_ISGID ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 int /*<<< orphan*/  UDF_FLAG_USE_AD_IN_ICB ; 
 int /*<<< orphan*/  UDF_FLAG_USE_EXTENDED_FE ; 
 int /*<<< orphan*/  UDF_FLAG_USE_SHORT_AD ; 
 struct udf_inode_info* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct udf_sb_info* FUNC3 (struct super_block*) ; 
 scalar_t__ UDF_VERS_USE_EXTENDED_FE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 void* FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC16 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 struct logicalVolIntegrityDescImpUse* FUNC19 (struct udf_sb_info*) ; 
 int /*<<< orphan*/  FUNC20 (struct super_block*) ; 
 scalar_t__ FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 

struct inode *FUNC23(struct inode *dir, int mode, int *err)
{
	struct super_block *sb = dir->i_sb;
	struct udf_sb_info *sbi = FUNC3(sb);
	struct inode *inode;
	int block;
	uint32_t start = FUNC1(dir)->i_location.logicalBlockNum;
	struct udf_inode_info *iinfo;
	struct udf_inode_info *dinfo = FUNC1(dir);

	inode = FUNC16(sb);

	if (!inode) {
		*err = -ENOMEM;
		return NULL;
	}
	*err = -ENOSPC;

	iinfo = FUNC1(inode);
	if (FUNC2(inode->i_sb, UDF_FLAG_USE_EXTENDED_FE)) {
		iinfo->i_efe = 1;
		if (UDF_VERS_USE_EXTENDED_FE > sbi->s_udfrev)
			sbi->s_udfrev = UDF_VERS_USE_EXTENDED_FE;
		iinfo->i_ext.i_data = FUNC10(inode->i_sb->s_blocksize -
					    sizeof(struct extendedFileEntry),
					    GFP_KERNEL);
	} else {
		iinfo->i_efe = 0;
		iinfo->i_ext.i_data = FUNC10(inode->i_sb->s_blocksize -
					    sizeof(struct fileEntry),
					    GFP_KERNEL);
	}
	if (!iinfo->i_ext.i_data) {
		FUNC9(inode);
		*err = -ENOMEM;
		return NULL;
	}

	block = FUNC18(dir->i_sb, NULL,
			      dinfo->i_location.partitionReferenceNum,
			      start, err);
	if (*err) {
		FUNC9(inode);
		return NULL;
	}

	FUNC14(&sbi->s_alloc_mutex);
	if (sbi->s_lvid_bh) {
		struct logicalVolIntegrityDesc *lvid =
			(struct logicalVolIntegrityDesc *)
			sbi->s_lvid_bh->b_data;
		struct logicalVolIntegrityDescImpUse *lvidiu =
							FUNC19(sbi);
		struct logicalVolHeaderDesc *lvhd;
		uint64_t uniqueID;
		lvhd = (struct logicalVolHeaderDesc *)
				(lvid->logicalVolContentsUse);
		if (FUNC0(mode))
			FUNC11(&lvidiu->numDirs, 1);
		else
			FUNC11(&lvidiu->numFiles, 1);
		iinfo->i_unique = uniqueID = FUNC12(lvhd->uniqueID);
		if (!(++uniqueID & 0x00000000FFFFFFFFUL))
			uniqueID += 16;
		lvhd->uniqueID = FUNC4(uniqueID);
		FUNC20(sb);
	}
	FUNC15(&sbi->s_alloc_mutex);
	inode->i_mode = mode;
	inode->i_uid = FUNC7();
	if (dir->i_mode & S_ISGID) {
		inode->i_gid = dir->i_gid;
		if (FUNC0(mode))
			mode |= S_ISGID;
	} else {
		inode->i_gid = FUNC6();
	}

	iinfo->i_location.logicalBlockNum = block;
	iinfo->i_location.partitionReferenceNum =
				dinfo->i_location.partitionReferenceNum;
	inode->i_ino = FUNC17(sb, &iinfo->i_location, 0);
	inode->i_blocks = 0;
	iinfo->i_lenEAttr = 0;
	iinfo->i_lenAlloc = 0;
	iinfo->i_use = 0;
	if (FUNC2(inode->i_sb, UDF_FLAG_USE_AD_IN_ICB))
		iinfo->i_alloc_type = ICBTAG_FLAG_AD_IN_ICB;
	else if (FUNC2(inode->i_sb, UDF_FLAG_USE_SHORT_AD))
		iinfo->i_alloc_type = ICBTAG_FLAG_AD_SHORT;
	else
		iinfo->i_alloc_type = ICBTAG_FLAG_AD_LONG;
	inode->i_mtime = inode->i_atime = inode->i_ctime =
		iinfo->i_crtime = FUNC5(inode->i_sb);
	FUNC8(inode);
	FUNC13(inode);

	if (FUNC21(inode)) {
		FUNC22(inode);
		inode->i_flags |= S_NOQUOTA;
		inode->i_nlink = 0;
		FUNC9(inode);
		*err = -EDQUOT;
		return NULL;
	}

	*err = 0;
	return inode;
}