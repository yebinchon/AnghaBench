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
struct nilfs_segsum_info {unsigned long nfinfo; scalar_t__ nsumblk; } ;
struct nilfs_segment_summary {int /*<<< orphan*/  ss_bytes; } ;
struct nilfs_sb_info {int /*<<< orphan*/  s_super; } ;
struct nilfs_recovery_block {int /*<<< orphan*/  list; void* blkoff; void* vblocknr; scalar_t__ blocknr; void* ino; } ;
struct nilfs_finfo {int /*<<< orphan*/  fi_ndatablk; int /*<<< orphan*/  fi_nblocks; int /*<<< orphan*/  fi_ino; } ;
struct nilfs_binfo_v {int /*<<< orphan*/  bi_blkoff; int /*<<< orphan*/  bi_vblocknr; } ;
struct list_head {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ sector_t ;
typedef  void* ino_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 struct nilfs_recovery_block* FUNC1 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct buffer_head* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC7 (int /*<<< orphan*/ ,struct buffer_head**,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct buffer_head**,unsigned int*,int,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(struct nilfs_sb_info *sbi, sector_t sum_blocknr,
			   struct nilfs_segsum_info *ssi,
			   struct list_head *head)
{
	struct buffer_head *bh;
	unsigned int offset;
	unsigned long nfinfo = ssi->nfinfo;
	sector_t blocknr = sum_blocknr + ssi->nsumblk;
	ino_t ino;
	int err = -EIO;

	if (!nfinfo)
		return 0;

	bh = FUNC6(sbi->s_super, sum_blocknr);
	if (FUNC9(!bh))
		goto out;

	offset = FUNC2(
		((struct nilfs_segment_summary *)bh->b_data)->ss_bytes);
	for (;;) {
		unsigned long nblocks, ndatablk, nnodeblk;
		struct nilfs_finfo *finfo;

		finfo = FUNC7(sbi->s_super, &bh, &offset, sizeof(*finfo));
		if (FUNC9(!finfo))
			goto out;

		ino = FUNC4(finfo->fi_ino);
		nblocks = FUNC3(finfo->fi_nblocks);
		ndatablk = FUNC3(finfo->fi_ndatablk);
		nnodeblk = nblocks - ndatablk;

		while (ndatablk-- > 0) {
			struct nilfs_recovery_block *rb;
			struct nilfs_binfo_v *binfo;

			binfo = FUNC7(sbi->s_super, &bh, &offset,
					   sizeof(*binfo));
			if (FUNC9(!binfo))
				goto out;

			rb = FUNC1(sizeof(*rb), GFP_NOFS);
			if (FUNC9(!rb)) {
				err = -ENOMEM;
				goto out;
			}
			rb->ino = ino;
			rb->blocknr = blocknr++;
			rb->vblocknr = FUNC4(binfo->bi_vblocknr);
			rb->blkoff = FUNC4(binfo->bi_blkoff);
			/* INIT_LIST_HEAD(&rb->list); */
			FUNC5(&rb->list, head);
		}
		if (--nfinfo == 0)
			break;
		blocknr += nnodeblk; /* always 0 for the data sync segments */
		FUNC8(sbi->s_super, &bh, &offset, sizeof(__le64),
			    nnodeblk);
		if (FUNC9(!bh))
			goto out;
	}
	err = 0;
 out:
	FUNC0(bh);   /* brelse(NULL) is just ignored */
	return err;
}