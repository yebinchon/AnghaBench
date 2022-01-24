#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct udf_inode_info {scalar_t__ i_next_alloc_block; int /*<<< orphan*/  i_next_alloc_goal; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 struct udf_inode_info* FUNC1 (struct inode*) ; 
 struct buffer_head* FUNC2 (struct inode*,scalar_t__,int*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct inode *inode, sector_t block,
			 struct buffer_head *bh_result, int create)
{
	int err, new;
	struct buffer_head *bh;
	sector_t phys = 0;
	struct udf_inode_info *iinfo;

	if (!create) {
		phys = FUNC6(inode, block);
		if (phys)
			FUNC4(bh_result, inode->i_sb, phys);
		return 0;
	}

	err = -EIO;
	new = 0;
	bh = NULL;

	FUNC3();

	iinfo = FUNC1(inode);
	if (block == iinfo->i_next_alloc_block + 1) {
		iinfo->i_next_alloc_block++;
		iinfo->i_next_alloc_goal++;
	}

	err = 0;

	bh = FUNC2(inode, block, &err, &phys, &new);
	FUNC0(bh);
	if (err)
		goto abort;
	FUNC0(!phys);

	if (new)
		FUNC5(bh_result);
	FUNC4(bh_result, inode->i_sb, phys);

abort:
	FUNC7();
	return err;
}