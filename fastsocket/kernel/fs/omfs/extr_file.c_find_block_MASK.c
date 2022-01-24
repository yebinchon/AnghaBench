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
struct omfs_extent_entry {int /*<<< orphan*/  e_cluster; int /*<<< orphan*/  e_blocks; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sector_t FUNC3(struct inode *inode, struct omfs_extent_entry *ent,
			sector_t block, int count, int *left)
{
	/* count > 1 because of terminator */
	sector_t searched = 0;
	for (; count > 1; count--) {
		int numblocks = FUNC2(FUNC0(inode->i_sb),
			FUNC1(ent->e_blocks));

		if (block >= searched  &&
		    block < searched + numblocks) {
			/*
			 * found it at cluster + (block - searched)
			 * numblocks - (block - searched) is remainder
			 */
			*left = numblocks - (block - searched);
			return FUNC2(FUNC0(inode->i_sb),
				FUNC1(ent->e_cluster)) +
				block - searched;
		}
		searched += numblocks;
		ent++;
	}
	return 0;
}