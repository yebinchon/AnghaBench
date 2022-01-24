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
struct ext4_extent {int dummy; } ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned int FUNC0 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_extent*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct ext4_extent *ex)
{
	ext4_fsblk_t ee_pblock;
	unsigned int ee_len;
	int ret;

	ee_len    = FUNC0(ex);
	ee_pblock = FUNC1(ex);

	ret = FUNC2(inode->i_sb, ee_pblock, ee_len, GFP_NOFS);
	if (ret > 0)
		ret = 0;

	return ret;
}