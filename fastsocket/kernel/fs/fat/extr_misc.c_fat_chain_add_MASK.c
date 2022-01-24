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
struct super_block {int dummy; } ;
struct msdos_sb_info {int cluster_bits; } ;
struct inode {int i_blocks; int /*<<< orphan*/  i_mode; struct super_block* i_sb; } ;
struct fat_entry {int dummy; } ;
typedef  int /*<<< orphan*/  llu ;
struct TYPE_2__ {int i_start; int i_logstart; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAT_ENT_EOF ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct msdos_sb_info* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct fat_entry*,int) ; 
 int FUNC6 (struct inode*,struct fat_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct fat_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct fat_entry*) ; 
 int FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 

int FUNC14(struct inode *inode, int new_dclus, int nr_cluster)
{
	struct super_block *sb = inode->i_sb;
	struct msdos_sb_info *sbi = FUNC2(sb);
	int ret, new_fclus, last;

	/*
	 * We must locate the last cluster of the file to add this new
	 * one (new_dclus) to the end of the link list (the FAT).
	 */
	last = new_fclus = 0;
	if (FUNC1(inode)->i_start) {
		int fclus, dclus;

		ret = FUNC8(inode, FAT_ENT_EOF, &fclus, &dclus);
		if (ret < 0)
			return ret;
		new_fclus = fclus + 1;
		last = dclus;
	}

	/* add new one to the last of the cluster chain */
	if (last) {
		struct fat_entry fatent;

		FUNC11(&fatent);
		ret = FUNC5(inode, &fatent, last);
		if (ret >= 0) {
			int wait = FUNC12(inode);
			ret = FUNC6(inode, &fatent, new_dclus, wait);
			FUNC10(&fatent);
		}
		if (ret < 0)
			return ret;
//		fat_cache_add(inode, new_fclus, new_dclus);
	} else {
		FUNC1(inode)->i_start = new_dclus;
		FUNC1(inode)->i_logstart = new_dclus;
		/*
		 * Since generic_write_sync() synchronizes regular files later,
		 * we sync here only directories.
		 */
		if (FUNC3(inode->i_mode) && FUNC0(inode)) {
			ret = FUNC9(inode);
			if (ret)
				return ret;
		} else
			FUNC13(inode);
	}
	if (new_fclus != (inode->i_blocks >> (sbi->cluster_bits - 9))) {
		FUNC7(sb, "clusters badly computed (%d != %llu)",
			     new_fclus,
			     (llu)(inode->i_blocks >> (sbi->cluster_bits - 9)));
		FUNC4(inode);
	}
	inode->i_blocks += nr_cluster << (sbi->cluster_bits - 9);

	return 0;
}