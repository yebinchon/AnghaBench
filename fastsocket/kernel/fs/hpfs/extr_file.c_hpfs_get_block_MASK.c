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
struct inode {int /*<<< orphan*/  i_sb; scalar_t__ i_blocks; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {int dummy; } ;
typedef  int sector_t ;
typedef  int secno ;
struct TYPE_2__ {int mmu_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EIO ; 
 int ENOSPC ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC2 (struct inode*,int) ; 
 TYPE_1__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, sector_t iblock, struct buffer_head *bh_result, int create)
{
	secno s;
	s = FUNC2(inode, iblock);
	if (s) {
		FUNC5(bh_result, inode->i_sb, s);
		return 0;
	}
	if (!create) return 0;
	if (iblock<<9 != FUNC3(inode)->mmu_private) {
		FUNC0();
		return -EIO;
	}
	if ((s = FUNC1(inode->i_sb, inode->i_ino, 1, inode->i_blocks - 1)) == -1) {
		FUNC4(inode->i_sb, inode->i_ino, 1, inode->i_blocks - 1);
		return -ENOSPC;
	}
	inode->i_blocks++;
	FUNC3(inode)->mmu_private += 512;
	FUNC6(bh_result);
	FUNC5(bh_result, inode->i_sb, s);
	return 0;
}