#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct udf_inode_info {scalar_t__ i_alloc_type; int i_lenAlloc; } ;
struct short_ad {int dummy; } ;
struct long_ad {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct extent_position {int offset; TYPE_1__* bh; int /*<<< orphan*/  block; } ;
struct allocExtDesc {int /*<<< orphan*/  lengthAllocDescs; } ;
typedef  int int8_t ;
struct TYPE_6__ {int s_udfrev; } ;
struct TYPE_5__ {scalar_t__ b_data; } ;

/* Variables and functions */
 scalar_t__ ICBTAG_FLAG_AD_LONG ; 
 scalar_t__ ICBTAG_FLAG_AD_SHORT ; 
 int /*<<< orphan*/  UDF_FLAG_STRICT ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct kernel_lb_addr*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int) ; 

int8_t FUNC13(struct inode *inode, struct extent_position epos,
		       struct kernel_lb_addr eloc, uint32_t elen)
{
	struct extent_position oepos;
	int adsize;
	int8_t etype;
	struct allocExtDesc *aed;
	struct udf_inode_info *iinfo;

	if (epos.bh) {
		FUNC4(epos.bh);
		FUNC4(epos.bh);
	}

	iinfo = FUNC0(inode);
	if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_SHORT)
		adsize = sizeof(struct short_ad);
	else if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_LONG)
		adsize = sizeof(struct long_ad);
	else
		adsize = 0;

	oepos = epos;
	if (FUNC10(inode, &epos, &eloc, &elen, 1) == -1)
		return -1;

	while ((etype = FUNC10(inode, &epos, &eloc, &elen, 1)) != -1) {
		FUNC12(inode, &oepos, &eloc, (etype << 30) | elen, 1);
		if (oepos.bh != epos.bh) {
			oepos.block = epos.block;
			FUNC3(oepos.bh);
			FUNC4(epos.bh);
			oepos.bh = epos.bh;
			oepos.offset = epos.offset - adsize;
		}
	}
	FUNC8(&eloc, 0x00, sizeof(struct kernel_lb_addr));
	elen = 0;

	if (epos.bh != oepos.bh) {
		FUNC9(inode->i_sb, inode, &epos.block, 0, 1);
		FUNC12(inode, &oepos, &eloc, elen, 1);
		FUNC12(inode, &oepos, &eloc, elen, 1);
		if (!oepos.bh) {
			iinfo->i_lenAlloc -= (adsize * 2);
			FUNC7(inode);
		} else {
			aed = (struct allocExtDesc *)oepos.bh->b_data;
			FUNC5(&aed->lengthAllocDescs, -(2 * adsize));
			if (!FUNC1(inode->i_sb, UDF_FLAG_STRICT) ||
			    FUNC2(inode->i_sb)->s_udfrev >= 0x0201)
				FUNC11(oepos.bh->b_data,
						oepos.offset - (2 * adsize));
			else
				FUNC11(oepos.bh->b_data,
						sizeof(struct allocExtDesc));
			FUNC6(oepos.bh, inode);
		}
	} else {
		FUNC12(inode, &oepos, &eloc, elen, 1);
		if (!oepos.bh) {
			iinfo->i_lenAlloc -= adsize;
			FUNC7(inode);
		} else {
			aed = (struct allocExtDesc *)oepos.bh->b_data;
			FUNC5(&aed->lengthAllocDescs, -adsize);
			if (!FUNC1(inode->i_sb, UDF_FLAG_STRICT) ||
			    FUNC2(inode->i_sb)->s_udfrev >= 0x0201)
				FUNC11(oepos.bh->b_data,
						epos.offset - adsize);
			else
				FUNC11(oepos.bh->b_data,
						sizeof(struct allocExtDesc));
			FUNC6(oepos.bh, inode);
		}
	}

	FUNC3(epos.bh);
	FUNC3(oepos.bh);

	return (elen >> 30);
}