#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_21__ {TYPE_3__** extent_ntfs_inos; TYPE_3__* base_ntfs_ino; } ;
struct TYPE_22__ {unsigned long mft_no; int nr_extents; int /*<<< orphan*/  count; int /*<<< orphan*/  extent_lock; TYPE_2__ ext; TYPE_1__* vol; scalar_t__ seq_no; } ;
typedef  TYPE_3__ ntfs_inode ;
struct TYPE_23__ {int /*<<< orphan*/  sequence_number; } ;
struct TYPE_20__ {int /*<<< orphan*/  sb; } ;
typedef  int /*<<< orphan*/  MFT_REF ;
typedef  TYPE_4__ MFT_RECORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__**) ; 
 TYPE_3__** FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 TYPE_4__* FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__**,TYPE_3__**,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC19 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 

MFT_RECORD *FUNC22(ntfs_inode *base_ni, MFT_REF mref,
		ntfs_inode **ntfs_ino)
{
	MFT_RECORD *m;
	ntfs_inode *ni = NULL;
	ntfs_inode **extent_nis = NULL;
	int i;
	unsigned long mft_no = FUNC3(mref);
	u16 seq_no = FUNC4(mref);
	bool destroy_ni = false;

	FUNC17("Mapping extent mft record 0x%lx (base mft record 0x%lx).",
			mft_no, base_ni->mft_no);
	/* Make sure the base ntfs inode doesn't go away. */
	FUNC7(&base_ni->count);
	/*
	 * Check if this extent inode has already been added to the base inode,
	 * in which case just return it. If not found, add it to the base
	 * inode before returning it.
	 */
	FUNC14(&base_ni->extent_lock);
	if (base_ni->nr_extents > 0) {
		extent_nis = base_ni->ext.extent_ntfs_inos;
		for (i = 0; i < base_ni->nr_extents; i++) {
			if (mft_no != extent_nis[i]->mft_no)
				continue;
			ni = extent_nis[i];
			/* Make sure the ntfs inode doesn't go away. */
			FUNC7(&ni->count);
			break;
		}
	}
	if (FUNC11(ni != NULL)) {
		FUNC15(&base_ni->extent_lock);
		FUNC6(&base_ni->count);
		/* We found the record; just have to map and return it. */
		m = FUNC12(ni);
		/* map_mft_record() has incremented this on success. */
		FUNC6(&ni->count);
		if (FUNC11(!FUNC2(m))) {
			/* Verify the sequence number. */
			if (FUNC11(FUNC10(m->sequence_number) == seq_no)) {
				FUNC17("Done 1.");
				*ntfs_ino = ni;
				return m;
			}
			FUNC21(ni);
			FUNC18(base_ni->vol->sb, "Found stale extent mft "
					"reference! Corrupt filesystem. "
					"Run chkdsk.");
			return FUNC1(-EIO);
		}
map_err_out:
		FUNC18(base_ni->vol->sb, "Failed to map extent "
				"mft record, error code %ld.", -FUNC5(m));
		return m;
	}
	/* Record wasn't there. Get a new ntfs inode and initialize it. */
	ni = FUNC19(base_ni->vol->sb, mft_no);
	if (FUNC20(!ni)) {
		FUNC15(&base_ni->extent_lock);
		FUNC6(&base_ni->count);
		return FUNC1(-ENOMEM);
	}
	ni->vol = base_ni->vol;
	ni->seq_no = seq_no;
	ni->nr_extents = -1;
	ni->ext.base_ntfs_ino = base_ni;
	/* Now map the record. */
	m = FUNC12(ni);
	if (FUNC2(m)) {
		FUNC15(&base_ni->extent_lock);
		FUNC6(&base_ni->count);
		FUNC16(ni);
		goto map_err_out;
	}
	/* Verify the sequence number if it is present. */
	if (seq_no && (FUNC10(m->sequence_number) != seq_no)) {
		FUNC18(base_ni->vol->sb, "Found stale extent mft "
				"reference! Corrupt filesystem. Run chkdsk.");
		destroy_ni = true;
		m = FUNC1(-EIO);
		goto unm_err_out;
	}
	/* Attach extent inode to base inode, reallocating memory if needed. */
	if (!(base_ni->nr_extents & 3)) {
		ntfs_inode **tmp;
		int new_size = (base_ni->nr_extents + 4) * sizeof(ntfs_inode *);

		tmp = FUNC9(new_size, GFP_NOFS);
		if (FUNC20(!tmp)) {
			FUNC18(base_ni->vol->sb, "Failed to allocate "
					"internal buffer.");
			destroy_ni = true;
			m = FUNC1(-ENOMEM);
			goto unm_err_out;
		}
		if (base_ni->nr_extents) {
			FUNC0(!base_ni->ext.extent_ntfs_inos);
			FUNC13(tmp, base_ni->ext.extent_ntfs_inos, new_size -
					4 * sizeof(ntfs_inode *));
			FUNC8(base_ni->ext.extent_ntfs_inos);
		}
		base_ni->ext.extent_ntfs_inos = tmp;
	}
	base_ni->ext.extent_ntfs_inos[base_ni->nr_extents++] = ni;
	FUNC15(&base_ni->extent_lock);
	FUNC6(&base_ni->count);
	FUNC17("Done 2.");
	*ntfs_ino = ni;
	return m;
unm_err_out:
	FUNC21(ni);
	FUNC15(&base_ni->extent_lock);
	FUNC6(&base_ni->count);
	/*
	 * If the extent inode was not attached to the base inode we need to
	 * release it or we will leak memory.
	 */
	if (destroy_ni)
		FUNC16(ni);
	return m;
}