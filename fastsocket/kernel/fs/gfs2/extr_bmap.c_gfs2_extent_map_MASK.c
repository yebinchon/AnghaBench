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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int i_blkbits; } ;
struct buffer_head {int b_size; int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,int) ; 

int FUNC3(struct inode *inode, u64 lblock, int *new, u64 *dblock, unsigned *extlen)
{
	struct buffer_head bh = { .b_state = 0, .b_blocknr = 0 };
	int ret;
	int create = *new;

	FUNC0(!extlen);
	FUNC0(!dblock);
	FUNC0(!new);

	bh.b_size = 1 << (inode->i_blkbits + (create ? 0 : 5));
	ret = FUNC2(inode, lblock, &bh, create);
	*extlen = bh.b_size >> inode->i_blkbits;
	*dblock = bh.b_blocknr;
	if (FUNC1(&bh))
		*new = 1;
	else
		*new = 0;
	return ret;
}