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
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct o2hb_region {unsigned int hr_timeout_ms; int hr_blocks; int /*<<< orphan*/ * hr_slots; int /*<<< orphan*/  hr_unclean_stop; } ;
struct o2hb_bio_wait_ctxt {int dummy; } ;

/* Variables and functions */
 int ML_HEARTBEAT ; 
 int ML_KTHREAD ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct o2hb_region*) ; 
 int FUNC6 (struct o2hb_region*) ; 
 unsigned int FUNC7 (struct timeval*,struct timeval*) ; 
 int FUNC8 (struct o2hb_region*,struct o2hb_bio_wait_ctxt*) ; 
 int /*<<< orphan*/  FUNC9 (struct o2hb_region*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct o2hb_region*,struct o2hb_bio_wait_ctxt*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(void *data)
{
	int i, ret;
	struct o2hb_region *reg = data;
	struct o2hb_bio_wait_ctxt write_wc;
	struct timeval before_hb, after_hb;
	unsigned int elapsed_msec;

	FUNC2(ML_HEARTBEAT|ML_KTHREAD, "hb thread running\n");

	FUNC12(current, -20);

	while (!FUNC1() && !reg->hr_unclean_stop) {
		/* We track the time spent inside
		 * o2hb_do_disk_heartbeat so that we avoid more than
		 * hr_timeout_ms between disk writes. On busy systems
		 * this should result in a heartbeat which is less
		 * likely to time itself out. */
		FUNC0(&before_hb);

		i = 0;
		do {
			ret = FUNC6(reg);
		} while (ret && ++i < 2);

		FUNC0(&after_hb);
		elapsed_msec = FUNC7(&before_hb, &after_hb);

		FUNC2(0, "start = %lu.%lu, end = %lu.%lu, msec = %u\n",
		     before_hb.tv_sec, (unsigned long) before_hb.tv_usec,
		     after_hb.tv_sec, (unsigned long) after_hb.tv_usec,
		     elapsed_msec);

		if (elapsed_msec < reg->hr_timeout_ms) {
			/* the kthread api has blocked signals for us so no
			 * need to record the return value. */
			FUNC4(reg->hr_timeout_ms - elapsed_msec);
		}
	}

	FUNC5(reg);

	/* unclean stop is only used in very bad situation */
	for(i = 0; !reg->hr_unclean_stop && i < reg->hr_blocks; i++)
		FUNC10(&reg->hr_slots[i]);

	/* Explicit down notification - avoid forcing the other nodes
	 * to timeout on this region when we could just as easily
	 * write a clear generation - thus indicating to them that
	 * this node has left this region.
	 *
	 * XXX: Should we skip this on unclean_stop? */
	FUNC9(reg, 0);
	ret = FUNC8(reg, &write_wc);
	if (ret == 0) {
		FUNC11(reg, &write_wc);
	} else {
		FUNC3(ret);
	}

	FUNC2(ML_HEARTBEAT|ML_KTHREAD, "hb thread exiting\n");

	return 0;
}