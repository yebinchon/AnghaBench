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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {unsigned int sb_bsize_shift; int sb_bsize; } ;
struct gfs2_sbd {unsigned int sd_quota_slots; unsigned int sd_qc_per_block; unsigned int sd_quota_chunks; int /*<<< orphan*/  sd_quota_count; int /*<<< orphan*/  sd_quota_list; int /*<<< orphan*/ * sd_quota_bitmap; TYPE_1__ sd_sb; int /*<<< orphan*/  sd_qc_inode; } ;
struct gfs2_quota_data {unsigned int qd_slot; int qd_slot_count; int /*<<< orphan*/  qd_list; scalar_t__ qd_change; int /*<<< orphan*/  qd_flags; } ;
struct gfs2_quota_change_host {int qc_flags; scalar_t__ qc_change; int /*<<< orphan*/  qc_id; } ;
struct gfs2_quota_change {int dummy; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct gfs2_inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFS2_METATYPE_QC ; 
 int GFS2_QCF_USER ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  QDF_CHANGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned int,int*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*,int /*<<< orphan*/ *,unsigned int,int) ; 
 struct buffer_head* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (struct gfs2_sbd*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_quota_change_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_sbd*) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct gfs2_sbd*,int,int /*<<< orphan*/ ,struct gfs2_quota_data**) ; 
 int /*<<< orphan*/  qd_lru_lock ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

int FUNC20(struct gfs2_sbd *sdp)
{
	struct gfs2_inode *ip = FUNC1(sdp->sd_qc_inode);
	unsigned int disksize = FUNC12(&ip->i_inode);
	unsigned int blocks = disksize >> sdp->sd_sb.sb_bsize_shift;
	unsigned int x, slot = 0;
	unsigned int found = 0;
	u64 dblock;
	u32 extlen = 0;
	int error;

	if (!disksize || disksize > (64 << 20) ||
	    disksize & (sdp->sd_sb.sb_bsize - 1)) {
		FUNC5(ip);
		return -EIO;
	}
	sdp->sd_quota_slots = blocks * sdp->sd_qc_per_block;
	sdp->sd_quota_chunks = FUNC0(sdp->sd_quota_slots, 8 * PAGE_SIZE);

	error = -ENOMEM;

	sdp->sd_quota_bitmap = FUNC13(sdp->sd_quota_chunks,
				       sizeof(unsigned char *), GFP_NOFS);
	if (!sdp->sd_quota_bitmap)
		return error;

	for (x = 0; x < sdp->sd_quota_chunks; x++) {
		sdp->sd_quota_bitmap[x] = FUNC14(PAGE_SIZE, GFP_NOFS);
		if (!sdp->sd_quota_bitmap[x])
			goto fail;
	}

	for (x = 0; x < blocks; x++) {
		struct buffer_head *bh;
		unsigned int y;

		if (!extlen) {
			int new = 0;
			error = FUNC6(&ip->i_inode, x, &new, &dblock, &extlen);
			if (error)
				goto fail;
		}
		error = -EIO;
		bh = FUNC8(ip->i_gl, dblock, extlen);
		if (!bh)
			goto fail;
		if (FUNC9(sdp, bh, GFS2_METATYPE_QC)) {
			FUNC3(bh);
			goto fail;
		}

		for (y = 0; y < sdp->sd_qc_per_block && slot < sdp->sd_quota_slots;
		     y++, slot++) {
			struct gfs2_quota_change_host qc;
			struct gfs2_quota_data *qd;

			FUNC10(&qc, bh->b_data +
					  sizeof(struct gfs2_meta_header) +
					  y * sizeof(struct gfs2_quota_change));
			if (!qc.qc_change)
				continue;

			error = FUNC16(sdp, (qc.qc_flags & GFS2_QCF_USER),
					 qc.qc_id, &qd);
			if (error) {
				FUNC3(bh);
				goto fail;
			}

			FUNC17(QDF_CHANGE, &qd->qd_flags);
			qd->qd_change = qc.qc_change;
			qd->qd_slot = slot;
			qd->qd_slot_count = 1;

			FUNC18(&qd_lru_lock);
			FUNC7(sdp, sdp->sd_quota_bitmap, slot, 1);
			FUNC15(&qd->qd_list, &sdp->sd_quota_list);
			FUNC2(&sdp->sd_quota_count);
			FUNC19(&qd_lru_lock);

			found++;
		}

		FUNC3(bh);
		dblock++;
		extlen--;
	}

	if (found)
		FUNC4(sdp, "found %u quota changes\n", found);

	return 0;

fail:
	FUNC11(sdp);
	return error;
}