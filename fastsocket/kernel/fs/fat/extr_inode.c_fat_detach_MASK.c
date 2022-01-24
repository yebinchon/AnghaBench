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
struct msdos_sb_info {int /*<<< orphan*/  inode_hash_lock; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_fat_hash; scalar_t__ i_pos; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct msdos_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct inode *inode)
{
	struct msdos_sb_info *sbi = FUNC1(inode->i_sb);
	FUNC3(&sbi->inode_hash_lock);
	FUNC0(inode)->i_pos = 0;
	FUNC2(&FUNC0(inode)->i_fat_hash);
	FUNC4(&sbi->inode_hash_lock);
}