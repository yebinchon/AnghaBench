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
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {scalar_t__* table; } ;
struct TYPE_3__ {int s_hashsize; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct buffer_head*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int EIO ; 
 int ENOTEMPTY ; 
 struct buffer_head* FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;
	struct buffer_head *bh;
	int retval, size;

	retval = -EIO;
	bh = FUNC2(sb, inode->i_ino);
	if (!bh)
		goto done;

	retval = -ENOTEMPTY;
	for (size = FUNC1(sb)->s_hashsize - 1; size >= 0; size--)
		if (FUNC0(bh)->table[size])
			goto not_empty;
	retval = 0;
not_empty:
	FUNC3(bh);
done:
	return retval;
}