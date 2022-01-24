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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_inodes_count; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 scalar_t__ EXT4_ROOT_INO ; 
 TYPE_2__* FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inode *FUNC8(struct super_block *sb,
					u64 ino, u32 generation)
{
	struct inode *inode;

	if (ino < FUNC2(sb) && ino != EXT4_ROOT_INO)
		return FUNC1(-ESTALE);
	if (ino > FUNC7(FUNC3(sb)->s_es->s_inodes_count))
		return FUNC1(-ESTALE);

	/* iget isn't really right if the inode is currently unallocated!!
	 *
	 * ext4_read_inode will return a bad_inode if the inode had been
	 * deleted, so we should be safe.
	 *
	 * Currently we don't know the generation for parent directory, so
	 * a generation of 0 means "accept any"
	 */
	inode = FUNC5(sb, ino);
	if (FUNC4(inode))
		return FUNC0(inode);
	if (generation && inode->i_generation != generation) {
		FUNC6(inode);
		return FUNC1(-ESTALE);
	}

	return inode;
}