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
struct super_block {int dummy; } ;
struct msdos_sb_info {int /*<<< orphan*/ * inode_hashtable; int /*<<< orphan*/  inode_hash_lock; } ;

/* Variables and functions */
 int FAT_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct msdos_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct super_block *sb)
{
	struct msdos_sb_info *sbi = FUNC1(sb);
	int i;

	FUNC2(&sbi->inode_hash_lock);
	for (i = 0; i < FAT_HASH_SIZE; i++)
		FUNC0(&sbi->inode_hashtable[i]);
}