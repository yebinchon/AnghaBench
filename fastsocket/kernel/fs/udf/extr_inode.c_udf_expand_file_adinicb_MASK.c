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
struct writeback_control {int nr_to_write; int /*<<< orphan*/  sync_mode; } ;
struct TYPE_4__ {char* i_data; } ;
struct udf_inode_info {int i_lenAlloc; int i_lenEAttr; void* i_alloc_type; TYPE_1__ i_ext; } ;
struct page {int dummy; } ;
struct TYPE_5__ {TYPE_3__* a_ops; } ;
struct inode {TYPE_2__ i_data; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mapping; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* writepage ) (struct page*,struct writeback_control*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* ICBTAG_FLAG_AD_LONG ; 
 void* ICBTAG_FLAG_AD_SHORT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  UDF_FLAG_USE_SHORT_AD ; 
 struct udf_inode_info* FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WB_SYNC_NONE ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct page* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,struct writeback_control*) ; 
 TYPE_3__ udf_aops ; 

void FUNC15(struct inode *inode, int newsize, int *err)
{
	struct page *page;
	char *kaddr;
	struct udf_inode_info *iinfo = FUNC4(inode);
	struct writeback_control udf_wbc = {
		.sync_mode = WB_SYNC_NONE,
		.nr_to_write = 1,
	};

	/* from now on we have normal address_space methods */
	inode->i_data.a_ops = &udf_aops;

	if (!iinfo->i_lenAlloc) {
		if (FUNC5(inode->i_sb, UDF_FLAG_USE_SHORT_AD))
			iinfo->i_alloc_type = ICBTAG_FLAG_AD_SHORT;
		else
			iinfo->i_alloc_type = ICBTAG_FLAG_AD_LONG;
		FUNC10(inode);
		return;
	}

	page = FUNC7(inode->i_mapping, 0);
	FUNC0(!FUNC1(page));

	if (!FUNC2(page)) {
		kaddr = FUNC8(page);
		FUNC12(kaddr + iinfo->i_lenAlloc, 0x00,
		       PAGE_CACHE_SIZE - iinfo->i_lenAlloc);
		FUNC11(kaddr, iinfo->i_ext.i_data + iinfo->i_lenEAttr,
			iinfo->i_lenAlloc);
		FUNC6(page);
		FUNC3(page);
		FUNC9(page);
	}
	FUNC12(iinfo->i_ext.i_data + iinfo->i_lenEAttr, 0x00,
	       iinfo->i_lenAlloc);
	iinfo->i_lenAlloc = 0;
	if (FUNC5(inode->i_sb, UDF_FLAG_USE_SHORT_AD))
		iinfo->i_alloc_type = ICBTAG_FLAG_AD_SHORT;
	else
		iinfo->i_alloc_type = ICBTAG_FLAG_AD_LONG;

	inode->i_data.a_ops->writepage(page, &udf_wbc);
	FUNC13(page);

	FUNC10(inode);
}