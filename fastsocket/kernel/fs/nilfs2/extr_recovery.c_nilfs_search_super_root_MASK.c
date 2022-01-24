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
typedef  void* u64 ;
struct the_nilfs {scalar_t__ ns_last_pseg; int ns_mount_state; void* ns_last_cno; void* ns_seg_seq; void* ns_last_seq; void* ns_nextnum; int /*<<< orphan*/  ns_ctime; void* ns_cno; void* ns_segnum; scalar_t__ ns_pseg_offset; } ;
struct nilfs_segsum_info {scalar_t__ nblocks; scalar_t__ next; int /*<<< orphan*/  ctime; } ;
struct nilfs_sb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  prev; } ;
struct nilfs_recovery_info {void* ri_cno; TYPE_1__ ri_used_segments; int /*<<< orphan*/  ri_need_recovery; scalar_t__ ri_lsegs_end; scalar_t__ ri_lsegs_start; scalar_t__ ri_super_root; void* ri_lsegs_start_seq; void* ri_nextnum; void* ri_segnum; void* ri_seq; scalar_t__ ri_pseg_start; } ;
typedef  scalar_t__ sector_t ;
typedef  void* __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NILFS_RECOVERY_SR_UPDATED ; 
 int NILFS_SEG_FAIL_CONSISTENCY ; 
 int NILFS_SEG_FAIL_IO ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_segsum_info*) ; 
 scalar_t__ FUNC2 (struct nilfs_segsum_info*) ; 
 scalar_t__ FUNC3 (struct nilfs_segsum_info*) ; 
 int NILFS_VALID_FS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nilfs_sb_info*,scalar_t__,void*,struct nilfs_segsum_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct the_nilfs*,void*,scalar_t__*,scalar_t__*) ; 
 void* FUNC8 (struct the_nilfs*,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *,void*) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  segments ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(struct the_nilfs *nilfs, struct nilfs_sb_info *sbi,
			    struct nilfs_recovery_info *ri)
{
	struct nilfs_segsum_info ssi;
	sector_t pseg_start, pseg_end, sr_pseg_start = 0;
	sector_t seg_start, seg_end; /* range of full segment (block number) */
	u64 seg_seq;
	__u64 segnum, nextnum = 0;
	__u64 cno;
	FUNC0(segments);
	int empty_seg = 0, scan_newer = 0;
	int ret;

	pseg_start = nilfs->ns_last_pseg;
	seg_seq = nilfs->ns_last_seq;
	cno = nilfs->ns_last_cno;
	segnum = FUNC8(nilfs, pseg_start);

	/* Calculate range of segment */
	FUNC7(nilfs, segnum, &seg_start, &seg_end);

	for (;;) {
		/* Load segment summary */
		ret = FUNC5(sbi, pseg_start, seg_seq, &ssi, 1);
		if (ret) {
			if (ret == NILFS_SEG_FAIL_IO)
				goto failed;
			goto strayed;
		}
		pseg_end = pseg_start + ssi.nblocks - 1;
		if (FUNC11(pseg_end > seg_end)) {
			ret = NILFS_SEG_FAIL_CONSISTENCY;
			goto strayed;
		}

		/* A valid partial segment */
		ri->ri_pseg_start = pseg_start;
		ri->ri_seq = seg_seq;
		ri->ri_segnum = segnum;
		nextnum = FUNC8(nilfs, ssi.next);
		ri->ri_nextnum = nextnum;
		empty_seg = 0;

		if (!FUNC1(&ssi)) {
			if (!scan_newer) {
				/* This will never happen because a superblock
				   (last_segment) always points to a pseg
				   having a super root. */
				ret = NILFS_SEG_FAIL_CONSISTENCY;
				goto failed;
			}
			if (!ri->ri_lsegs_start && FUNC2(&ssi)) {
				ri->ri_lsegs_start = pseg_start;
				ri->ri_lsegs_start_seq = seg_seq;
			}
			if (FUNC3(&ssi))
				ri->ri_lsegs_end = pseg_start;
			goto try_next_pseg;
		}

		/* A valid super root was found. */
		ri->ri_cno = cno++;
		ri->ri_super_root = pseg_end;
		ri->ri_lsegs_start = ri->ri_lsegs_end = 0;

		FUNC6(&segments);
		nilfs->ns_pseg_offset = (sr_pseg_start = pseg_start)
			+ ssi.nblocks - seg_start;
		nilfs->ns_seg_seq = seg_seq;
		nilfs->ns_segnum = segnum;
		nilfs->ns_cno = cno;  /* nilfs->ns_cno = ri->ri_cno + 1 */
		nilfs->ns_ctime = ssi.ctime;
		nilfs->ns_nextnum = nextnum;

		if (scan_newer)
			ri->ri_need_recovery = NILFS_RECOVERY_SR_UPDATED;
		else {
			if (nilfs->ns_mount_state & NILFS_VALID_FS)
				goto super_root_found;
			scan_newer = 1;
		}

		/* reset region for roll-forward */
		pseg_start += ssi.nblocks;
		if (pseg_start < seg_end)
			continue;
		goto feed_segment;

 try_next_pseg:
		/* Standing on a course, or met an inconsistent state */
		pseg_start += ssi.nblocks;
		if (pseg_start < seg_end)
			continue;
		goto feed_segment;

 strayed:
		/* Off the trail */
		if (!scan_newer)
			/*
			 * This can happen if a checkpoint was written without
			 * barriers, or as a result of an I/O failure.
			 */
			goto failed;

 feed_segment:
		/* Looking to the next full segment */
		if (empty_seg++)
			goto super_root_found; /* found a valid super root */

		ret = FUNC9(&segments, segnum);
		if (FUNC11(ret))
			goto failed;

		seg_seq++;
		segnum = nextnum;
		FUNC7(nilfs, segnum, &seg_start, &seg_end);
		pseg_start = seg_start;
	}

 super_root_found:
	/* Updating pointers relating to the latest checkpoint */
	FUNC4(&segments, ri->ri_used_segments.prev);
	nilfs->ns_last_pseg = sr_pseg_start;
	nilfs->ns_last_seq = nilfs->ns_seg_seq;
	nilfs->ns_last_cno = ri->ri_cno;
	return 0;

 failed:
	FUNC6(&segments);
	return (ret < 0) ? ret : FUNC10(ret);
}