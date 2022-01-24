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
struct TYPE_3__ {scalar_t__ i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; int i_lenAlloc; scalar_t__ i_lenEAttr; TYPE_1__ i_ext; } ;
struct inode {int i_size; TYPE_2__* i_sb; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {int s_blocksize; } ;

/* Variables and functions */
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct udf_inode_info* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int,int*) ; 
 int FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  udf_get_block ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 () ; 

void FUNC17(struct inode *inode)
{
	int offset;
	int err;
	struct udf_inode_info *iinfo;

	if (!(FUNC5(inode->i_mode) || FUNC3(inode->i_mode) ||
	      FUNC4(inode->i_mode)))
		return;
	if (FUNC0(inode) || FUNC1(inode))
		return;

	FUNC9();
	iinfo = FUNC6(inode);
	if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
		if (inode->i_sb->s_blocksize <
				(FUNC13(inode) +
				 inode->i_size)) {
			FUNC12(inode, inode->i_size, &err);
			if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
				inode->i_size = iinfo->i_lenAlloc;
				FUNC16();
				return;
			} else
				FUNC15(inode);
		} else {
			offset = inode->i_size & (inode->i_sb->s_blocksize - 1);
			FUNC11(iinfo->i_ext.i_data + iinfo->i_lenEAttr + offset,
				0x00, inode->i_sb->s_blocksize -
				offset - FUNC13(inode));
			iinfo->i_lenAlloc = inode->i_size;
		}
	} else {
		FUNC7(inode->i_mapping, inode->i_size,
				    udf_get_block);
		FUNC15(inode);
	}

	inode->i_mtime = inode->i_ctime = FUNC8(inode->i_sb);
	if (FUNC2(inode))
		FUNC14(inode);
	else
		FUNC10(inode);
	FUNC16();
}