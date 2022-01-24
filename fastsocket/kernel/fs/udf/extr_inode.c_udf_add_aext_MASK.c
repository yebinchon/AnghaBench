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
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_data; } ;
struct udf_inode_info {char* i_lenEAttr; int i_alloc_type; int i_lenAlloc; TYPE_1__ i_ext; } ;
struct tag {int dummy; } ;
struct short_ad {void* extPosition; void* extLength; } ;
struct long_ad {char* impUse; int /*<<< orphan*/  extLocation; void* extLength; } ;
struct kernel_lb_addr {int logicalBlockNum; int /*<<< orphan*/  partitionReferenceNum; } ;
struct inode {TYPE_2__* i_sb; } ;
struct extent_position {int offset; struct buffer_head* bh; struct kernel_lb_addr block; } ;
struct buffer_head {char* b_data; } ;
struct allocExtDesc {void* lengthAllocDescs; void* previousAllocExtLocation; } ;
typedef  int int8_t ;
struct TYPE_10__ {int s_udfrev; } ;
struct TYPE_9__ {int s_blocksize; } ;

/* Variables and functions */
 int EXT_NEXT_EXTENT_ALLOCDECS ; 
#define  ICBTAG_FLAG_AD_LONG 129 
#define  ICBTAG_FLAG_AD_SHORT 128 
 int /*<<< orphan*/  TAG_IDENT_AED ; 
 int /*<<< orphan*/  UDF_FLAG_STRICT ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct kernel_lb_addr) ; 
 int /*<<< orphan*/  FUNC6 (void**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 struct buffer_head* FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 int FUNC19 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 

int8_t FUNC21(struct inode *inode, struct extent_position *epos,
		    struct kernel_lb_addr *eloc, uint32_t elen, int inc)
{
	int adsize;
	struct short_ad *sad = NULL;
	struct long_ad *lad = NULL;
	struct allocExtDesc *aed;
	int8_t etype;
	uint8_t *ptr;
	struct udf_inode_info *iinfo = FUNC0(inode);

	if (!epos->bh)
		ptr = iinfo->i_ext.i_data + epos->offset -
			FUNC13(inode) +
			iinfo->i_lenEAttr;
	else
		ptr = epos->bh->b_data + epos->offset;

	if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_SHORT)
		adsize = sizeof(struct short_ad);
	else if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_LONG)
		adsize = sizeof(struct long_ad);
	else
		return -1;

	if (epos->offset + (2 * adsize) > inode->i_sb->s_blocksize) {
		char *sptr, *dptr;
		struct buffer_head *nbh;
		int err, loffset;
		struct kernel_lb_addr obloc = epos->block;

		epos->block.logicalBlockNum = FUNC15(inode->i_sb, NULL,
						obloc.partitionReferenceNum,
						obloc.logicalBlockNum, &err);
		if (!epos->block.logicalBlockNum)
			return -1;
		nbh = FUNC17(inode->i_sb, FUNC14(inode->i_sb,
								 &epos->block,
								 0));
		if (!nbh)
			return -1;
		FUNC7(nbh);
		FUNC11(nbh->b_data, 0x00, inode->i_sb->s_blocksize);
		FUNC12(nbh);
		FUNC20(nbh);
		FUNC8(nbh, inode);

		aed = (struct allocExtDesc *)(nbh->b_data);
		if (!FUNC1(inode->i_sb, UDF_FLAG_STRICT))
			aed->previousAllocExtLocation =
					FUNC4(obloc.logicalBlockNum);
		if (epos->offset + adsize > inode->i_sb->s_blocksize) {
			loffset = epos->offset;
			aed->lengthAllocDescs = FUNC4(adsize);
			sptr = ptr - adsize;
			dptr = nbh->b_data + sizeof(struct allocExtDesc);
			FUNC10(dptr, sptr, adsize);
			epos->offset = sizeof(struct allocExtDesc) + adsize;
		} else {
			loffset = epos->offset + adsize;
			aed->lengthAllocDescs = FUNC4(0);
			sptr = ptr;
			epos->offset = sizeof(struct allocExtDesc);

			if (epos->bh) {
				aed = (struct allocExtDesc *)epos->bh->b_data;
				FUNC6(&aed->lengthAllocDescs, adsize);
			} else {
				iinfo->i_lenAlloc += adsize;
				FUNC9(inode);
			}
		}
		if (FUNC2(inode->i_sb)->s_udfrev >= 0x0200)
			FUNC16(nbh->b_data, TAG_IDENT_AED, 3, 1,
				    epos->block.logicalBlockNum, sizeof(struct tag));
		else
			FUNC16(nbh->b_data, TAG_IDENT_AED, 2, 1,
				    epos->block.logicalBlockNum, sizeof(struct tag));
		switch (iinfo->i_alloc_type) {
		case ICBTAG_FLAG_AD_SHORT:
			sad = (struct short_ad *)sptr;
			sad->extLength = FUNC4(EXT_NEXT_EXTENT_ALLOCDECS |
						     inode->i_sb->s_blocksize);
			sad->extPosition =
				FUNC4(epos->block.logicalBlockNum);
			break;
		case ICBTAG_FLAG_AD_LONG:
			lad = (struct long_ad *)sptr;
			lad->extLength = FUNC4(EXT_NEXT_EXTENT_ALLOCDECS |
						     inode->i_sb->s_blocksize);
			lad->extLocation = FUNC5(epos->block);
			FUNC11(lad->impUse, 0x00, sizeof(lad->impUse));
			break;
		}
		if (epos->bh) {
			if (!FUNC1(inode->i_sb, UDF_FLAG_STRICT) ||
			    FUNC2(inode->i_sb)->s_udfrev >= 0x0201)
				FUNC18(epos->bh->b_data, loffset);
			else
				FUNC18(epos->bh->b_data,
						sizeof(struct allocExtDesc));
			FUNC8(epos->bh, inode);
			FUNC3(epos->bh);
		} else {
			FUNC9(inode);
		}
		epos->bh = nbh;
	}

	etype = FUNC19(inode, epos, eloc, elen, inc);

	if (!epos->bh) {
		iinfo->i_lenAlloc += adsize;
		FUNC9(inode);
	} else {
		aed = (struct allocExtDesc *)epos->bh->b_data;
		FUNC6(&aed->lengthAllocDescs, adsize);
		if (!FUNC1(inode->i_sb, UDF_FLAG_STRICT) ||
				FUNC2(inode->i_sb)->s_udfrev >= 0x0201)
			FUNC18(epos->bh->b_data,
					epos->offset + (inc ? 0 : adsize));
		else
			FUNC18(epos->bh->b_data,
					sizeof(struct allocExtDesc));
		FUNC8(epos->bh, inode);
	}

	return etype;
}