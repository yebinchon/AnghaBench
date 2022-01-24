#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_15__ ;
typedef  struct TYPE_17__   TYPE_13__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_17__ {int /*<<< orphan*/  partitionReferenceNum; int /*<<< orphan*/  logicalBlockNum; } ;
struct TYPE_21__ {char* i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; int i_lenExtents; int i_lenEAttr; int i_lenAlloc; TYPE_13__ i_location; TYPE_3__ i_ext; } ;
struct udf_fileident_bh {TYPE_4__* sbh; TYPE_4__* ebh; } ;
struct pathComponent {int componentType; int lengthComponentIdent; int /*<<< orphan*/  componentIdent; scalar_t__ componentFileVersionNum; } ;
struct logicalVolIntegrityDesc {scalar_t__ logicalVolContentsUse; } ;
struct logicalVolHeaderDesc {int /*<<< orphan*/  uniqueID; } ;
struct kernel_lb_addr {int logicalBlockNum; int /*<<< orphan*/  partitionReferenceNum; } ;
struct TYPE_20__ {int /*<<< orphan*/ * a_ops; } ;
struct inode {int i_mode; int i_size; TYPE_6__* i_sb; int /*<<< orphan*/ * i_op; TYPE_2__ i_data; } ;
struct TYPE_19__ {scalar_t__ impUse; int /*<<< orphan*/  extLocation; void* extLength; } ;
struct fileIdentDesc {TYPE_1__ icb; } ;
struct extent_position {TYPE_4__* bh; int /*<<< orphan*/  offset; TYPE_13__ block; } ;
struct dentry {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct allocDescImpUse {scalar_t__ impUse; } ;
typedef  void* __le32 ;
struct TYPE_23__ {int s_blocksize; } ;
struct TYPE_22__ {char* b_data; } ;
struct TYPE_18__ {struct buffer_head* s_lvid_bh; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  UDF_NAME_LEN ; 
 TYPE_15__* FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_13__) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,int) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int /*<<< orphan*/ ) ; 
 struct fileIdentDesc* FUNC21 (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ; 
 int FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int FUNC24 (TYPE_6__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC25 (TYPE_6__*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct inode* FUNC26 (struct inode*,int,int*) ; 
 int FUNC27 (TYPE_6__*,char*,char*,int) ; 
 int /*<<< orphan*/  udf_symlink_aops ; 
 TYPE_4__* FUNC28 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC31 () ; 

__attribute__((used)) static int FUNC32(struct inode *dir, struct dentry *dentry,
		       const char *symname)
{
	struct inode *inode;
	struct pathComponent *pc;
	char *compstart;
	struct udf_fileident_bh fibh;
	struct extent_position epos = {};
	int eoffset, elen = 0;
	struct fileIdentDesc *fi;
	struct fileIdentDesc cfi;
	char *ea;
	int err;
	int block;
	char *name = NULL;
	int namelen;
	struct buffer_head *bh;
	struct udf_inode_info *iinfo;

	FUNC13();
	inode = FUNC26(dir, S_IFLNK, &err);
	if (!inode)
		goto out;

	name = FUNC10(UDF_NAME_LEN, GFP_NOFS);
	if (!name) {
		err = -ENOMEM;
		goto out_no_entry;
	}

	iinfo = FUNC0(inode);
	inode->i_mode = S_IFLNK | S_IRWXUGO;
	inode->i_data.a_ops = &udf_symlink_aops;
	inode->i_op = &page_symlink_inode_operations;

	if (iinfo->i_alloc_type != ICBTAG_FLAG_AD_IN_ICB) {
		struct kernel_lb_addr eloc;
		uint32_t bsize;

		block = FUNC25(inode->i_sb, inode,
				iinfo->i_location.partitionReferenceNum,
				iinfo->i_location.logicalBlockNum, &err);
		if (!block)
			goto out_no_entry;
		epos.block = iinfo->i_location;
		epos.offset = FUNC23(inode);
		epos.bh = NULL;
		eloc.logicalBlockNum = block;
		eloc.partitionReferenceNum =
				iinfo->i_location.partitionReferenceNum;
		bsize = inode->i_sb->s_blocksize;
		iinfo->i_lenExtents = bsize;
		FUNC20(inode, &epos, &eloc, bsize, 0);
		FUNC2(epos.bh);

		block = FUNC24(inode->i_sb, block,
				iinfo->i_location.partitionReferenceNum,
				0);
		epos.bh = FUNC28(inode->i_sb, block);
		FUNC12(epos.bh);
		FUNC18(epos.bh->b_data, 0x00, inode->i_sb->s_blocksize);
		FUNC19(epos.bh);
		FUNC30(epos.bh);
		FUNC15(epos.bh, inode);
		ea = epos.bh->b_data + FUNC22(inode);
	} else
		ea = iinfo->i_ext.i_data + iinfo->i_lenEAttr;

	eoffset = inode->i_sb->s_blocksize - FUNC22(inode);
	pc = (struct pathComponent *)ea;

	if (*symname == '/') {
		do {
			symname++;
		} while (*symname == '/');

		pc->componentType = 1;
		pc->lengthComponentIdent = 0;
		pc->componentFileVersionNum = 0;
		elen += sizeof(struct pathComponent);
	}

	err = -ENAMETOOLONG;

	while (*symname) {
		if (elen + sizeof(struct pathComponent) > eoffset)
			goto out_no_entry;

		pc = (struct pathComponent *)(ea + elen);

		compstart = (char *)symname;

		do {
			symname++;
		} while (*symname && *symname != '/');

		pc->componentType = 5;
		pc->lengthComponentIdent = 0;
		pc->componentFileVersionNum = 0;
		if (compstart[0] == '.') {
			if ((symname - compstart) == 1)
				pc->componentType = 4;
			else if ((symname - compstart) == 2 &&
					compstart[1] == '.')
				pc->componentType = 3;
		}

		if (pc->componentType == 5) {
			namelen = FUNC27(inode->i_sb, compstart, name,
						   symname - compstart);
			if (!namelen)
				goto out_no_entry;

			if (elen + sizeof(struct pathComponent) + namelen >
					eoffset)
				goto out_no_entry;
			else
				pc->lengthComponentIdent = namelen;

			FUNC17(pc->componentIdent, name, namelen);
		}

		elen += sizeof(struct pathComponent) + pc->lengthComponentIdent;

		if (*symname) {
			do {
				symname++;
			} while (*symname == '/');
		}
	}

	FUNC2(epos.bh);
	inode->i_size = elen;
	if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
		iinfo->i_lenAlloc = inode->i_size;
	FUNC16(inode);

	fi = FUNC21(dir, dentry, &fibh, &cfi, &err);
	if (!fi)
		goto out_no_entry;
	cfi.icb.extLength = FUNC3(inode->i_sb->s_blocksize);
	cfi.icb.extLocation = FUNC5(iinfo->i_location);
	bh = FUNC1(inode->i_sb)->s_lvid_bh;
	if (bh) {
		struct logicalVolIntegrityDesc *lvid =
				(struct logicalVolIntegrityDesc *)bh->b_data;
		struct logicalVolHeaderDesc *lvhd;
		uint64_t uniqueID;
		lvhd = (struct logicalVolHeaderDesc *)
				lvid->logicalVolContentsUse;
		uniqueID = FUNC11(lvhd->uniqueID);
		*(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
			FUNC3(uniqueID & 0x00000000FFFFFFFFUL);
		if (!(++uniqueID & 0x00000000FFFFFFFFUL))
			uniqueID += 16;
		lvhd->uniqueID = FUNC4(uniqueID);
		FUNC14(bh);
	}
	FUNC29(dir, &cfi, fi, &fibh, NULL, NULL);
	if (FUNC0(dir)->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
		FUNC16(dir);
	if (fibh.sbh != fibh.ebh)
		FUNC2(fibh.ebh);
	FUNC2(fibh.sbh);
	FUNC6(dentry, inode);
	err = 0;

out:
	FUNC9(name);
	FUNC31();
	return err;

out_no_entry:
	FUNC7(inode);
	FUNC8(inode);
	goto out;
}