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
struct inode {int i_size; TYPE_1__* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
struct TYPE_4__ {int i_disksize; } ;
struct TYPE_3__ {int s_blocksize_bits; scalar_t__ s_blocksize; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 struct buffer_head* FUNC2 (int /*<<< orphan*/ *,struct inode*,int,int,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *FUNC4(handle_t *handle,
					struct inode *inode,
					ext4_lblk_t *block, int *err)
{
	struct buffer_head *bh;

	*block = inode->i_size >> inode->i_sb->s_blocksize_bits;

	bh = FUNC2(handle, inode, *block, 1, err);
	if (bh) {
		inode->i_size += inode->i_sb->s_blocksize;
		FUNC0(inode)->i_disksize = inode->i_size;
		*err = FUNC3(handle, bh);
		if (*err) {
			FUNC1(bh);
			bh = NULL;
		}
	}
	return bh;
}