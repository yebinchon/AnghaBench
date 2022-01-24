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
struct writeback_control {unsigned long nr_to_write; int range_cyclic; int /*<<< orphan*/ * older_than_this; int /*<<< orphan*/  sync_mode; } ;
struct backing_dev_info {int dirty_exceeded; int /*<<< orphan*/  wb; } ;
struct address_space {struct backing_dev_info* backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_RECLAIMABLE ; 
 int /*<<< orphan*/  BDI_WRITEBACK ; 
 int HZ ; 
 int /*<<< orphan*/  NR_FILE_DIRTY ; 
 int /*<<< orphan*/  NR_UNSTABLE_NFS ; 
 int /*<<< orphan*/  NR_WRITEBACK ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  WB_SYNC_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct backing_dev_info*) ; 
 long FUNC2 (struct backing_dev_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct backing_dev_info*) ; 
 long FUNC4 (struct backing_dev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*,unsigned long*,unsigned long*,struct backing_dev_info*) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 scalar_t__ laptop_mode ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct writeback_control*,struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct writeback_control*,struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct writeback_control*,struct backing_dev_info*) ; 
 scalar_t__ FUNC13 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct writeback_control*) ; 

__attribute__((used)) static void FUNC15(struct address_space *mapping,
				unsigned long write_chunk)
{
	long nr_reclaimable, bdi_nr_reclaimable;
	long nr_writeback, bdi_nr_writeback;
	unsigned long background_thresh;
	unsigned long dirty_thresh;
	unsigned long bdi_thresh;
	unsigned long pages_written = 0;
	unsigned long pause = 1;

	struct backing_dev_info *bdi = mapping->backing_dev_info;

	for (;;) {
		struct writeback_control wbc = {
			.sync_mode	= WB_SYNC_NONE,
			.older_than_this = NULL,
			.nr_to_write	= write_chunk,
			.range_cyclic	= 1,
		};

		FUNC6(&background_thresh, &dirty_thresh,
				&bdi_thresh, bdi);

		nr_reclaimable = FUNC7(NR_FILE_DIRTY) +
					FUNC7(NR_UNSTABLE_NFS);
		nr_writeback = FUNC7(NR_WRITEBACK);

		bdi_nr_reclaimable = FUNC2(bdi, BDI_RECLAIMABLE);
		bdi_nr_writeback = FUNC2(bdi, BDI_WRITEBACK);

		if (bdi_nr_reclaimable + bdi_nr_writeback <= bdi_thresh)
			break;

		/*
		 * Throttle it only when the background writeback cannot
		 * catch-up. This avoids (excessively) small writeouts
		 * when the bdi limits are ramping up.
		 */
		if (nr_reclaimable + nr_writeback <
				(background_thresh + dirty_thresh) / 2)
			break;

		if (!bdi->dirty_exceeded)
			bdi->dirty_exceeded = 1;

		/* Note: nr_reclaimable denotes nr_dirty + nr_unstable.
		 * Unstable writes are a feature of certain networked
		 * filesystems (i.e. NFS) in which data may have been
		 * written to the server's write cache, but has not yet
		 * been flushed to permanent storage.
		 * Only move pages to writeback if this bdi is over its
		 * threshold otherwise wait until the disk writes catch
		 * up.
		 */
		FUNC10(&wbc, bdi);
		if (bdi_nr_reclaimable > bdi_thresh) {
			FUNC14(&bdi->wb, &wbc);
			pages_written += write_chunk - wbc.nr_to_write;
			FUNC12(&wbc, bdi);
			FUNC6(&background_thresh, &dirty_thresh,
				       &bdi_thresh, bdi);
		}

		/*
		 * In order to avoid the stacked BDI deadlock we need
		 * to ensure we accurately count the 'dirty' pages when
		 * the threshold is low.
		 *
		 * Otherwise it would be possible to get thresh+n pages
		 * reported dirty, even though there are thresh-m pages
		 * actually dirty; with m+n sitting in the percpu
		 * deltas.
		 */
		if (bdi_thresh < 2*FUNC3(bdi)) {
			bdi_nr_reclaimable = FUNC4(bdi, BDI_RECLAIMABLE);
			bdi_nr_writeback = FUNC4(bdi, BDI_WRITEBACK);
		} else if (bdi_nr_reclaimable) {
			bdi_nr_reclaimable = FUNC2(bdi, BDI_RECLAIMABLE);
			bdi_nr_writeback = FUNC2(bdi, BDI_WRITEBACK);
		}

		if (bdi_nr_reclaimable + bdi_nr_writeback <= bdi_thresh)
			break;
		if (pages_written >= write_chunk)
			break;		/* We've done our duty */

		FUNC11(&wbc, bdi);
		FUNC0(TASK_KILLABLE);
		FUNC8(pause);

		/*
		 * Increase the delay for each loop, up to our previous
		 * default of taking a 100ms nap.
		 */
		pause <<= 1;
		if (pause > HZ / 10)
			pause = HZ / 10;

		if (FUNC5(current))
			break;
	}

	if(pages_written) FUNC9(pages_written);
	if (bdi_nr_reclaimable + bdi_nr_writeback < bdi_thresh &&
			bdi->dirty_exceeded)
		bdi->dirty_exceeded = 0;

	if (FUNC13(bdi))
		return;

	/*
	 * In laptop mode, we wait until hitting the higher threshold before
	 * starting background writeout, and then write out all the way down
	 * to the lower threshold.  So slow writers cause minimal disk activity.
	 *
	 * In normal mode, we start background writeout at the lower
	 * background_thresh, to keep the amount of dirty memory low.
	 */
	if ((laptop_mode && pages_written) ||
	    (!laptop_mode && ((FUNC7(NR_FILE_DIRTY)
			       + FUNC7(NR_UNSTABLE_NFS))
					  > background_thresh)))
		FUNC1(bdi);
}