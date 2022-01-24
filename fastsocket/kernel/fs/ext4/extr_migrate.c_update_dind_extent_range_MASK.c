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
struct list_blocks_struct {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  unsigned long ext4_lblk_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
typedef  scalar_t__ __le32 ;
struct TYPE_2__ {int s_blocksize; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 struct buffer_head* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,unsigned long*,struct list_blocks_struct*) ; 

__attribute__((used)) static int FUNC4(handle_t *handle, struct inode *inode,
				    ext4_fsblk_t pblock, ext4_lblk_t *blk_nump,
				    struct list_blocks_struct *lb)
{
	struct buffer_head *bh;
	__le32 *i_data;
	int i, retval = 0;
	ext4_lblk_t blk_count = *blk_nump;
	unsigned long max_entries = inode->i_sb->s_blocksize >> 2;

	if (!pblock) {
		/* Only update the file block number */
		*blk_nump += max_entries * max_entries;
		return 0;
	}
	bh = FUNC2(inode->i_sb, pblock);
	if (!bh)
		return -EIO;

	i_data = (__le32 *)bh->b_data;
	for (i = 0; i < max_entries; i++) {
		if (i_data[i]) {
			retval = FUNC3(handle, inode,
						FUNC0(i_data[i]),
						&blk_count, lb);
			if (retval)
				break;
		} else {
			/* Only update the file block number */
			blk_count += max_entries;
		}
	}

	/* Update the file block number */
	*blk_nump = blk_count;
	FUNC1(bh);
	return retval;

}