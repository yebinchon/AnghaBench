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
typedef  scalar_t__ u64 ;
struct super_block {scalar_t__ s_blocksize; } ;
struct inode {struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
			     u64 zero_to_size)
{
	int ret = 0;
	u64 start_off;
	struct super_block *sb = inode->i_sb;

	start_off = FUNC3(sb, FUNC1(inode));
	while (start_off < zero_to_size) {
		ret = FUNC4(inode, start_off);
		if (ret < 0) {
			FUNC2(ret);
			goto out;
		}

		start_off += sb->s_blocksize;

		/*
		 * Very large extends have the potential to lock up
		 * the cpu for extended periods of time.
		 */
		FUNC0();
	}

out:
	return ret;
}