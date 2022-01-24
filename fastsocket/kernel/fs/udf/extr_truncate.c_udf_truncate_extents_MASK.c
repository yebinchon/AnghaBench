#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct udf_inode_info {scalar_t__ i_alloc_type; int i_lenAlloc; int i_lenExtents; } ;
struct super_block {int s_blocksize_bits; int s_blocksize; } ;
struct short_ad {int dummy; } ;
struct long_ad {int dummy; } ;
struct TYPE_2__ {scalar_t__ partitionReferenceNum; scalar_t__ logicalBlockNum; } ;
struct kernel_long_ad {int extLength; TYPE_1__ extLocation; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
struct extent_position {int offset; scalar_t__ bh; struct kernel_lb_addr block; } ;
struct allocExtDesc {int dummy; } ;
typedef  int sector_t ;
typedef  int loff_t ;
typedef  int int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EXT_NEXT_EXTENT_ALLOCDECS ; 
 int EXT_NOT_RECORDED_NOT_ALLOCATED ; 
 scalar_t__ ICBTAG_FLAG_AD_LONG ; 
 scalar_t__ ICBTAG_FLAG_AD_SHORT ; 
 struct udf_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int,int) ; 
 int FUNC5 (struct inode*,int,struct extent_position*,struct kernel_lb_addr*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct extent_position*,struct kernel_long_ad*,int) ; 
 int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,struct inode*,struct kernel_lb_addr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*,struct extent_position*,TYPE_1__*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct extent_position*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int /*<<< orphan*/ ) ; 

void FUNC16(struct inode *inode)
{
	struct extent_position epos;
	struct kernel_lb_addr eloc, neloc = {};
	uint32_t elen, nelen = 0, indirect_ext_len = 0, lenalloc;
	int8_t etype;
	struct super_block *sb = inode->i_sb;
	sector_t first_block = inode->i_size >> sb->s_blocksize_bits, offset;
	loff_t byte_offset;
	int adsize;
	struct udf_inode_info *iinfo = FUNC2(inode);

	if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_SHORT)
		adsize = sizeof(struct short_ad);
	else if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_LONG)
		adsize = sizeof(struct long_ad);
	else
		FUNC0();

	etype = FUNC5(inode, first_block, &epos, &eloc, &elen, &offset);
	byte_offset = (offset << sb->s_blocksize_bits) +
		(inode->i_size & (sb->s_blocksize - 1));
	if (etype != -1) {
		epos.offset -= adsize;
		FUNC4(inode, &epos, &eloc, etype, elen, byte_offset);
		epos.offset += adsize;
		if (byte_offset)
			lenalloc = epos.offset;
		else
			lenalloc = epos.offset - adsize;

		if (!epos.bh)
			lenalloc -= FUNC9(inode);
		else
			lenalloc -= sizeof(struct allocExtDesc);

		while ((etype = FUNC7(inode, &epos, &eloc,
						 &elen, 0)) != -1) {
			if (etype == (EXT_NEXT_EXTENT_ALLOCDECS >> 30)) {
				FUNC15(inode, &epos, &neloc, nelen, 0);
				if (indirect_ext_len) {
					/* We managed to free all extents in the
					 * indirect extent - free it too */
					FUNC1(!epos.bh);
					FUNC10(sb, inode, &epos.block,
							0, indirect_ext_len);
				} else if (!epos.bh) {
					iinfo->i_lenAlloc = lenalloc;
					FUNC6(inode);
				} else
					FUNC14(inode,
							&epos, lenalloc);
				FUNC3(epos.bh);
				epos.offset = sizeof(struct allocExtDesc);
				epos.block = eloc;
				epos.bh = FUNC13(sb,
						FUNC11(sb, &eloc, 0));
				if (elen)
					indirect_ext_len =
						(elen + sb->s_blocksize - 1) >>
						sb->s_blocksize_bits;
				else
					indirect_ext_len = 1;
			} else {
				FUNC4(inode, &epos, &eloc, etype,
					     elen, 0);
				epos.offset += adsize;
			}
		}

		if (indirect_ext_len) {
			FUNC1(!epos.bh);
			FUNC10(sb, inode, &epos.block, 0,
					indirect_ext_len);
		} else if (!epos.bh) {
			iinfo->i_lenAlloc = lenalloc;
			FUNC6(inode);
		} else
			FUNC14(inode, &epos, lenalloc);
	} else if (inode->i_size) {
		if (byte_offset) {
			struct kernel_long_ad extent;

			/*
			 *  OK, there is not extent covering inode->i_size and
			 *  no extent above inode->i_size => truncate is
			 *  extending the file by 'offset' blocks.
			 */
			if ((!epos.bh &&
			     epos.offset ==
					FUNC9(inode)) ||
			    (epos.bh && epos.offset ==
						sizeof(struct allocExtDesc))) {
				/* File has no extents at all or has empty last
				 * indirect extent! Create a fake extent... */
				extent.extLocation.logicalBlockNum = 0;
				extent.extLocation.partitionReferenceNum = 0;
				extent.extLength =
					EXT_NOT_RECORDED_NOT_ALLOCATED;
			} else {
				epos.offset -= adsize;
				etype = FUNC12(inode, &epos,
						      &extent.extLocation,
						      &extent.extLength, 0);
				extent.extLength |= etype << 30;
			}
			FUNC8(inode, &epos, &extent,
					offset +
					((inode->i_size &
						(sb->s_blocksize - 1)) != 0));
		}
	}
	iinfo->i_lenExtents = inode->i_size;

	FUNC3(epos.bh);
}