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
struct super_block {scalar_t__ s_blocksize; } ;
struct msdos_sb_info {int cluster_size; unsigned long cluster_bits; scalar_t__ sec_per_clus; } ;
struct msdos_dir_entry {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int MAX_BUF_PER_PAGE ; 
 struct msdos_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (struct inode*,int*,int) ; 
 scalar_t__ FUNC5 (struct msdos_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,struct buffer_head*,struct msdos_dir_entry*) ; 
 int FUNC8 (struct inode*,scalar_t__,int,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned long FUNC13 (unsigned long,scalar_t__) ; 
 struct buffer_head* FUNC14 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC16(struct inode *dir, void *slots, int nr_slots,
			       int *nr_cluster, struct msdos_dir_entry **de,
			       struct buffer_head **bh, loff_t *i_pos)
{
	struct super_block *sb = dir->i_sb;
	struct msdos_sb_info *sbi = FUNC1(sb);
	struct buffer_head *bhs[MAX_BUF_PER_PAGE];
	sector_t blknr, start_blknr, last_blknr;
	unsigned long size, copy;
	int err, i, n, offset, cluster[2];

	/*
	 * The minimum cluster size is 512bytes, and maximum entry
	 * size is 32*slots (672bytes).  So, iff the cluster size is
	 * 512bytes, we may need two clusters.
	 */
	size = nr_slots * sizeof(struct msdos_dir_entry);
	*nr_cluster = (size + (sbi->cluster_size - 1)) >> sbi->cluster_bits;
	FUNC0(*nr_cluster > 2);

	err = FUNC4(dir, cluster, *nr_cluster);
	if (err)
		goto error;

	/*
	 * First stage: Fill the directory entry.  NOTE: This cluster
	 * is not referenced from any inode yet, so updates order is
	 * not important.
	 */
	i = n = copy = 0;
	do {
		start_blknr = blknr = FUNC5(sbi, cluster[i]);
		last_blknr = start_blknr + sbi->sec_per_clus;
		while (blknr < last_blknr) {
			bhs[n] = FUNC14(sb, blknr);
			if (!bhs[n]) {
				err = -ENOMEM;
				goto error_nomem;
			}

			/* fill the directory entry */
			copy = FUNC13(size, sb->s_blocksize);
			FUNC11(bhs[n]->b_data, slots, copy);
			slots += copy;
			size -= copy;
			FUNC15(bhs[n]);
			FUNC10(bhs[n], dir);
			if (!size)
				break;
			n++;
			blknr++;
		}
	} while (++i < *nr_cluster);

	FUNC12(bhs[n]->b_data + copy, 0, sb->s_blocksize - copy);
	offset = copy - sizeof(struct msdos_dir_entry);
	FUNC9(bhs[n]);
	*bh = bhs[n];
	*de = (struct msdos_dir_entry *)((*bh)->b_data + offset);
	*i_pos = FUNC7(sb, *bh, *de);

	/* Second stage: clear the rest of cluster, and write outs */
	err = FUNC8(dir, start_blknr, ++n, bhs, MAX_BUF_PER_PAGE);
	if (err)
		goto error_free;

	return cluster[0];

error_free:
	FUNC3(*bh);
	*bh = NULL;
	n = 0;
error_nomem:
	for (i = 0; i < n; i++)
		FUNC2(bhs[i]);
	FUNC6(dir, cluster[0]);
error:
	return err;
}