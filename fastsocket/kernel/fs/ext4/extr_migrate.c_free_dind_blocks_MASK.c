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
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ __le32 ;
struct TYPE_2__ {int s_blocksize; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  EXT4_FREE_BLOCKS_METADATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(handle_t *handle,
				struct inode *inode, __le32 i_data)
{
	int i;
	__le32 *tmp_idata;
	struct buffer_head *bh;
	unsigned long max_entries = inode->i_sb->s_blocksize >> 2;

	bh = FUNC4(inode->i_sb, FUNC2(i_data));
	if (!bh)
		return -EIO;

	tmp_idata = (__le32 *)bh->b_data;
	for (i = 0; i < max_entries; i++) {
		if (tmp_idata[i]) {
			FUNC1(handle, inode);
			FUNC0(handle, inode,
					FUNC2(tmp_idata[i]), 1,
					EXT4_FREE_BLOCKS_METADATA);
		}
	}
	FUNC3(bh);
	FUNC1(handle, inode);
	FUNC0(handle, inode, FUNC2(i_data), 1,
			 EXT4_FREE_BLOCKS_METADATA);
	return 0;
}