#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u64 ;
typedef  int u32 ;
struct super_block {unsigned int s_blocksize_bits; scalar_t__ s_blocksize; } ;
struct ocfs2_super {struct super_block* sb; } ;
struct ocfs2_inode_info {int /*<<< orphan*/  ip_alloc_sem; int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_dyn_features; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_dx_root_bh; struct buffer_head* dl_dx_leaf_bh; int /*<<< orphan*/  dl_hinfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  id_data; } ;
struct TYPE_5__ {TYPE_1__ i_data; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_mtime_nsec; int /*<<< orphan*/  i_ctime_nsec; void* i_mtime; void* i_ctime; void* i_size; int /*<<< orphan*/  i_dyn_features; TYPE_2__ id2; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;
struct inode {struct super_block* i_sb; int /*<<< orphan*/  i_blocks; TYPE_3__ i_ctime; TYPE_3__ i_mtime; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__ CURRENT_TIME ; 
 int EDQUOT ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct ocfs2_inode_info* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 struct ocfs2_super* FUNC4 (struct super_block*) ; 
 scalar_t__ OCFS2_SUBALLOC_ALLOC ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,struct buffer_head**,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 scalar_t__ FUNC19 (struct super_block*) ; 
 int FUNC20 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int,int*,int*) ; 
 int FUNC21 (struct super_block*,unsigned int) ; 
 unsigned int FUNC22 (struct super_block*,int) ; 
 int FUNC23 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*,struct ocfs2_dinode*) ; 
 int FUNC26 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct buffer_head*,struct ocfs2_alloc_context*,int,int,struct buffer_head**) ; 
 unsigned int FUNC27 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC28 (struct inode*,int /*<<< orphan*/ *,struct buffer_head**,int,int*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*,struct buffer_head*,struct buffer_head*) ; 
 struct buffer_head** FUNC30 (struct super_block*,int*) ; 
 int FUNC31 (scalar_t__,scalar_t__,struct inode*) ; 
 int /*<<< orphan*/  FUNC32 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC33 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC34 (struct inode*,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC35 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC36 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC37 (struct inode*) ; 
 int FUNC38 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC39 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC40 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC41 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 scalar_t__ FUNC42 (struct inode*) ; 
 int FUNC43 (struct inode*,struct buffer_head*) ; 
 int FUNC44 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 int FUNC45 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC47 (struct ocfs2_super*,int) ; 
 scalar_t__ FUNC48 (struct ocfs2_super*) ; 
 struct buffer_head* FUNC49 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC53 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC54 (struct inode*,int) ; 

__attribute__((used)) static int FUNC55(struct inode *dir, struct buffer_head *di_bh,
				   unsigned int blocks_wanted,
				   struct ocfs2_dir_lookup_result *lookup,
				   struct buffer_head **first_block_bh)
{
	u32 alloc, dx_alloc, bit_off, len, num_dx_entries = 0;
	struct super_block *sb = dir->i_sb;
	int ret, i, num_dx_leaves = 0, dx_inline = 0,
		credits = FUNC36(sb);
	u64 dx_insert_blkno, blkno,
		bytes = blocks_wanted << sb->s_blocksize_bits;
	struct ocfs2_super *osb = FUNC4(dir->i_sb);
	struct ocfs2_inode_info *oi = FUNC3(dir);
	struct ocfs2_alloc_context *data_ac;
	struct ocfs2_alloc_context *meta_ac = NULL;
	struct buffer_head *dirdata_bh = NULL;
	struct buffer_head *dx_root_bh = NULL;
	struct buffer_head **dx_leaves = NULL;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	handle_t *handle;
	struct ocfs2_extent_tree et;
	struct ocfs2_extent_tree dx_et;
	int did_quota = 0, bytes_allocated = 0;

	FUNC33(&et, FUNC1(dir), di_bh);

	alloc = FUNC21(sb, bytes);
	dx_alloc = 0;

	FUNC11(&oi->ip_alloc_sem);

	if (FUNC48(osb)) {
		credits += FUNC19(sb);

		dx_inline = FUNC43(dir, di_bh);
		if (!dx_inline) {
			/* Add one more cluster for an index leaf */
			dx_alloc++;
			dx_leaves = FUNC30(sb,
								&num_dx_leaves);
			if (!dx_leaves) {
				ret = -ENOMEM;
				FUNC18(ret);
				goto out;
			}
		}

		/* This gets us the dx_root */
		ret = FUNC45(osb, 1, &meta_ac);
		if (ret) {
			FUNC18(ret);
			goto out;
		}
	}

	/*
	 * We should never need more than 2 clusters for the unindexed
	 * tree - maximum dirent size is far less than one block. In
	 * fact, the only time we'd need more than one cluster is if
	 * blocksize == clustersize and the dirent won't fit in the
	 * extra space that the expansion to a single block gives. As
	 * of today, that only happens on 4k/4k file systems.
	 */
	FUNC0(alloc > 2);

	ret = FUNC44(osb, alloc + dx_alloc, &data_ac);
	if (ret) {
		FUNC18(ret);
		goto out;
	}

	/*
	 * Prepare for worst case allocation scenario of two separate
	 * extents in the unindexed tree.
	 */
	if (alloc == 2)
		credits += OCFS2_SUBALLOC_ALLOC;

	handle = FUNC47(osb, credits);
	if (FUNC2(handle)) {
		ret = FUNC5(handle);
		FUNC18(ret);
		goto out;
	}

	if (FUNC53(dir,
				FUNC23(osb->sb,
							alloc + dx_alloc))) {
		ret = -EDQUOT;
		goto out_commit;
	}
	did_quota = 1;

	if (FUNC48(osb) && !dx_inline) {
		/*
		 * Allocate our index cluster first, to maximize the
		 * possibility that unindexed leaves grow
		 * contiguously.
		 */
		ret = FUNC6(dir, 0, handle, data_ac,
						 dx_leaves, num_dx_leaves,
						 &dx_insert_blkno);
		if (ret) {
			FUNC18(ret);
			goto out_commit;
		}
		bytes_allocated += FUNC23(dir->i_sb, 1);
	}

	/*
	 * Try to claim as many clusters as the bitmap can give though
	 * if we only get one now, that's enough to continue. The rest
	 * will be claimed after the conversion to extents.
	 */
	ret = FUNC20(osb, handle, data_ac, 1, &bit_off, &len);
	if (ret) {
		FUNC18(ret);
		goto out_commit;
	}
	bytes_allocated += FUNC23(dir->i_sb, 1);

	/*
	 * Operations are carefully ordered so that we set up the new
	 * data block first. The conversion from inline data to
	 * extents follows.
	 */
	blkno = FUNC22(dir->i_sb, bit_off);
	dirdata_bh = FUNC49(sb, blkno);
	if (!dirdata_bh) {
		ret = -EIO;
		FUNC18(ret);
		goto out_commit;
	}

	FUNC46(FUNC1(dir), dirdata_bh);

	ret = FUNC39(handle, FUNC1(dir), dirdata_bh,
				      OCFS2_JOURNAL_ACCESS_CREATE);
	if (ret) {
		FUNC18(ret);
		goto out_commit;
	}

	FUNC16(dirdata_bh->b_data, di->id2.i_data.id_data, FUNC13(dir));
	FUNC17(dirdata_bh->b_data + FUNC13(dir), 0,
	       sb->s_blocksize - FUNC13(dir));
	i = FUNC31(dirdata_bh->b_data, FUNC13(dir), dir);
	if (FUNC42(dir)) {
		/*
		 * Prepare the dir trailer up front. It will otherwise look
		 * like a valid dirent. Even if inserting the index fails
		 * (unlikely), then all we'll have done is given first dir
		 * block a small amount of fragmentation.
		 */
		FUNC34(dir, dirdata_bh, i);
	}

	ret = FUNC41(handle, dirdata_bh);
	if (ret) {
		FUNC18(ret);
		goto out_commit;
	}

	if (FUNC48(osb) && !dx_inline) {
		/*
		 * Dx dirs with an external cluster need to do this up
		 * front. Inline dx root's get handled later, after
		 * we've allocated our root block. We get passed back
		 * a total number of items so that dr_num_entries can
		 * be correctly set once the dx_root has been
		 * allocated.
		 */
		ret = FUNC28(dir, handle, dx_leaves,
					       num_dx_leaves, &num_dx_entries,
					       dirdata_bh);
		if (ret) {
			FUNC18(ret);
			goto out_commit;
		}
	}

	/*
	 * Set extent, i_size, etc on the directory. After this, the
	 * inode should contain the same exact dirents as before and
	 * be fully accessible from system calls.
	 *
	 * We let the later dirent insert modify c/mtime - to the user
	 * the data hasn't changed.
	 */
	ret = FUNC40(handle, FUNC1(dir), di_bh,
				      OCFS2_JOURNAL_ACCESS_CREATE);
	if (ret) {
		FUNC18(ret);
		goto out_commit;
	}

	FUNC50(&oi->ip_lock);
	oi->ip_dyn_features &= ~OCFS2_INLINE_DATA_FL;
	di->i_dyn_features = FUNC8(oi->ip_dyn_features);
	FUNC51(&oi->ip_lock);

	FUNC25(dir, di);

	FUNC14(dir, sb->s_blocksize);
	dir->i_mtime = dir->i_ctime = CURRENT_TIME;

	di->i_size = FUNC10(sb->s_blocksize);
	di->i_ctime = di->i_mtime = FUNC10(dir->i_ctime.tv_sec);
	di->i_ctime_nsec = di->i_mtime_nsec = FUNC9(dir->i_ctime.tv_nsec);

	/*
	 * This should never fail as our extent list is empty and all
	 * related blocks have been journaled already.
	 */
	ret = FUNC38(handle, &et, 0, blkno, len,
				  0, NULL);
	if (ret) {
		FUNC18(ret);
		goto out_commit;
	}

	/*
	 * Set i_blocks after the extent insert for the most up to
	 * date ip_clusters value.
	 */
	dir->i_blocks = FUNC37(dir);

	ret = FUNC41(handle, di_bh);
	if (ret) {
		FUNC18(ret);
		goto out_commit;
	}

	if (FUNC48(osb)) {
		ret = FUNC26(osb, handle, dir, di_bh,
						dirdata_bh, meta_ac, dx_inline,
						num_dx_entries, &dx_root_bh);
		if (ret) {
			FUNC18(ret);
			goto out_commit;
		}

		if (dx_inline) {
			FUNC29(dir, dx_root_bh,
						      dirdata_bh);
		} else {
			FUNC35(&dx_et,
						       FUNC1(dir),
						       dx_root_bh);
			ret = FUNC38(handle, &dx_et, 0,
						  dx_insert_blkno, 1, 0, NULL);
			if (ret)
				FUNC18(ret);
		}
	}

	/*
	 * We asked for two clusters, but only got one in the 1st
	 * pass. Claim the 2nd cluster as a separate extent.
	 */
	if (alloc > len) {
		ret = FUNC20(osb, handle, data_ac, 1, &bit_off,
					   &len);
		if (ret) {
			FUNC18(ret);
			goto out_commit;
		}
		blkno = FUNC22(dir->i_sb, bit_off);

		ret = FUNC38(handle, &et, 1,
					  blkno, len, 0, NULL);
		if (ret) {
			FUNC18(ret);
			goto out_commit;
		}
		bytes_allocated += FUNC23(dir->i_sb, 1);
	}

	*first_block_bh = dirdata_bh;
	dirdata_bh = NULL;
	if (FUNC48(osb)) {
		unsigned int off;

		if (!dx_inline) {
			/*
			 * We need to return the correct block within the
			 * cluster which should hold our entry.
			 */
			off = FUNC27(FUNC4(dir->i_sb),
						    &lookup->dl_hinfo);
			FUNC12(dx_leaves[off]);
			lookup->dl_dx_leaf_bh = dx_leaves[off];
		}
		lookup->dl_dx_root_bh = dx_root_bh;
		dx_root_bh = NULL;
	}

out_commit:
	if (ret < 0 && did_quota)
		FUNC54(dir, bytes_allocated);

	FUNC24(osb, handle);

out:
	FUNC52(&oi->ip_alloc_sem);
	if (data_ac)
		FUNC32(data_ac);
	if (meta_ac)
		FUNC32(meta_ac);

	if (dx_leaves) {
		for (i = 0; i < num_dx_leaves; i++)
			FUNC7(dx_leaves[i]);
		FUNC15(dx_leaves);
	}

	FUNC7(dirdata_bh);
	FUNC7(dx_root_bh);

	return ret;
}