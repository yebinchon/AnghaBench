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
struct super_block {unsigned long s_blocksize_bits; int s_dirt; } ;
struct msdos_sb_info {int free_clusters; int free_clus_valid; scalar_t__ max_cluster; unsigned long fat_length; struct fatent_operations* fatent_ops; } ;
struct fatent_operations {scalar_t__ (* ent_get ) (struct fat_entry*) ;} ;
struct fat_entry {scalar_t__ entry; } ;

/* Variables and functions */
 scalar_t__ FAT_ENT_FREE ; 
 unsigned long FAT_READA_SIZE ; 
 int /*<<< orphan*/  FAT_START_ENT ; 
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct msdos_sb_info*,struct fat_entry*) ; 
 int FUNC2 (struct super_block*,struct fat_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,struct fat_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fat_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct fat_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct fat_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct msdos_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC9 (struct fat_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct msdos_sb_info*) ; 

int FUNC11(struct super_block *sb)
{
	struct msdos_sb_info *sbi = FUNC0(sb);
	struct fatent_operations *ops = sbi->fatent_ops;
	struct fat_entry fatent;
	unsigned long reada_blocks, reada_mask, cur_block;
	int err = 0, free;

	FUNC7(sbi);
	if (sbi->free_clusters != -1 && sbi->free_clus_valid)
		goto out;

	reada_blocks = FAT_READA_SIZE >> sb->s_blocksize_bits;
	reada_mask = reada_blocks - 1;
	cur_block = 0;

	free = 0;
	FUNC5(&fatent);
	FUNC6(&fatent, FAT_START_ENT);
	while (fatent.entry < sbi->max_cluster) {
		/* readahead of fat blocks */
		if ((cur_block & reada_mask) == 0) {
			unsigned long rest = sbi->fat_length - cur_block;
			FUNC3(sb, &fatent, FUNC8(reada_blocks, rest));
		}
		cur_block++;

		err = FUNC2(sb, &fatent);
		if (err)
			goto out;

		do {
			if (ops->ent_get(&fatent) == FAT_ENT_FREE)
				free++;
		} while (FUNC1(sbi, &fatent));
	}
	sbi->free_clusters = free;
	sbi->free_clus_valid = 1;
	sb->s_dirt = 1;
	FUNC4(&fatent);
out:
	FUNC10(sbi);
	return err;
}