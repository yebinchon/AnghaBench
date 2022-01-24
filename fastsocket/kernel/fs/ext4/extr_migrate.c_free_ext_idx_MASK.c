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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_extent_idx {int dummy; } ;
struct ext4_extent_header {scalar_t__ eh_depth; int /*<<< orphan*/  eh_entries; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  EXT4_FREE_BLOCKS_METADATA ; 
 struct ext4_extent_idx* FUNC0 (struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_extent_idx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 struct buffer_head* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(handle_t *handle, struct inode *inode,
					struct ext4_extent_idx *ix)
{
	int i, retval = 0;
	ext4_fsblk_t block;
	struct buffer_head *bh;
	struct ext4_extent_header *eh;

	block = FUNC2(ix);
	bh = FUNC6(inode->i_sb, block);
	if (!bh)
		return -EIO;

	eh = (struct ext4_extent_header *)bh->b_data;
	if (eh->eh_depth != 0) {
		ix = FUNC0(eh);
		for (i = 0; i < FUNC4(eh->eh_entries); i++, ix++) {
			retval = FUNC7(handle, inode, ix);
			if (retval)
				break;
		}
	}
	FUNC5(bh);
	FUNC3(handle, inode);
	FUNC1(handle, inode, block, 1,
			 EXT4_FREE_BLOCKS_METADATA);
	return retval;
}