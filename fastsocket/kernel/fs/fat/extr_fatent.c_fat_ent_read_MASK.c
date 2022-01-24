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
struct msdos_sb_info {int max_cluster; struct fatent_operations* fatent_ops; } ;
struct inode {struct super_block* i_sb; } ;
struct fatent_operations {int (* ent_bread ) (struct super_block*,struct fat_entry*,int,int /*<<< orphan*/ ) ;int (* ent_get ) (struct fat_entry*) ;int /*<<< orphan*/  (* ent_blocknr ) (struct super_block*,int,int*,int /*<<< orphan*/ *) ;} ;
struct fat_entry {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int EIO ; 
 int FAT_START_ENT ; 
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,struct fat_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fat_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct fat_entry*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct super_block*,struct fat_entry*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct fat_entry*) ; 

int FUNC8(struct inode *inode, struct fat_entry *fatent, int entry)
{
	struct super_block *sb = inode->i_sb;
	struct msdos_sb_info *sbi = FUNC0(inode->i_sb);
	struct fatent_operations *ops = sbi->fatent_ops;
	int err, offset;
	sector_t blocknr;

	if (entry < FAT_START_ENT || sbi->max_cluster <= entry) {
		FUNC3(fatent);
		FUNC2(sb, "invalid access to FAT (entry 0x%08x)", entry);
		return -EIO;
	}

	FUNC4(fatent, entry);
	ops->ent_blocknr(sb, entry, &offset, &blocknr);

	if (!FUNC1(sb, fatent, offset, blocknr)) {
		FUNC3(fatent);
		err = ops->ent_bread(sb, fatent, offset, blocknr);
		if (err)
			return err;
	}
	return ops->ent_get(fatent);
}