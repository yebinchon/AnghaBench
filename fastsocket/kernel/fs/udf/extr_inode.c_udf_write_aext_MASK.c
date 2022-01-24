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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_data; } ;
struct udf_inode_info {int i_alloc_type; int /*<<< orphan*/ * i_lenEAttr; TYPE_1__ i_ext; } ;
struct short_ad {void* extPosition; void* extLength; } ;
struct long_ad {int /*<<< orphan*/  impUse; int /*<<< orphan*/  extLocation; void* extLength; } ;
struct kernel_lb_addr {int logicalBlockNum; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct extent_position {int offset; TYPE_2__* bh; } ;
struct allocExtDesc {int /*<<< orphan*/  lengthAllocDescs; } ;
typedef  int int8_t ;
struct TYPE_6__ {int s_udfrev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * b_data; } ;

/* Variables and functions */
#define  ICBTAG_FLAG_AD_LONG 129 
#define  ICBTAG_FLAG_AD_SHORT 128 
 int /*<<< orphan*/  UDF_FLAG_STRICT ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct kernel_lb_addr) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 

int8_t FUNC11(struct inode *inode, struct extent_position *epos,
		      struct kernel_lb_addr *eloc, uint32_t elen, int inc)
{
	int adsize;
	uint8_t *ptr;
	struct short_ad *sad;
	struct long_ad *lad;
	struct udf_inode_info *iinfo = FUNC0(inode);

	if (!epos->bh)
		ptr = iinfo->i_ext.i_data + epos->offset -
			FUNC9(inode) +
			iinfo->i_lenEAttr;
	else
		ptr = epos->bh->b_data + epos->offset;

	switch (iinfo->i_alloc_type) {
	case ICBTAG_FLAG_AD_SHORT:
		sad = (struct short_ad *)ptr;
		sad->extLength = FUNC3(elen);
		sad->extPosition = FUNC3(eloc->logicalBlockNum);
		adsize = sizeof(struct short_ad);
		break;
	case ICBTAG_FLAG_AD_LONG:
		lad = (struct long_ad *)ptr;
		lad->extLength = FUNC3(elen);
		lad->extLocation = FUNC4(*eloc);
		FUNC8(lad->impUse, 0x00, sizeof(lad->impUse));
		adsize = sizeof(struct long_ad);
		break;
	default:
		return -1;
	}

	if (epos->bh) {
		if (!FUNC1(inode->i_sb, UDF_FLAG_STRICT) ||
		    FUNC2(inode->i_sb)->s_udfrev >= 0x0201) {
			struct allocExtDesc *aed =
				(struct allocExtDesc *)epos->bh->b_data;
			FUNC10(epos->bh->b_data,
				       FUNC5(aed->lengthAllocDescs) +
				       sizeof(struct allocExtDesc));
		}
		FUNC6(epos->bh, inode);
	} else {
		FUNC7(inode);
	}

	if (inc)
		epos->offset += adsize;

	return (elen >> 30);
}