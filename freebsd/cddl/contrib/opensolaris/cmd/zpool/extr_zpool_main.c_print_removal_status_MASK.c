#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int uint_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  total_buf ;
typedef  int time_t ;
typedef  int /*<<< orphan*/  rate_buf ;
struct TYPE_3__ {scalar_t__ prs_state; int prs_removing_vdev; int prs_start_time; int prs_end_time; int prs_copied; int prs_to_copy; int prs_mapping_memory; } ;
typedef  TYPE_1__ pool_removal_stat_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  mem_buf ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int /*<<< orphan*/  examined_buf ;
typedef  int /*<<< orphan*/  copied_buf ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ DSS_CANCELED ; 
 scalar_t__ DSS_FINISHED ; 
 scalar_t__ DSS_NONE ; 
 scalar_t__ DSS_SCANNING ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(zpool_handle_t *zhp, pool_removal_stat_t *prs)
{
	char copied_buf[7], examined_buf[7], total_buf[7], rate_buf[7];
	time_t start, end;
	nvlist_t *config, *nvroot;
	nvlist_t **child;
	uint_t children;
	char *vdev_name;

	if (prs == NULL || prs->prs_state == DSS_NONE)
		return;

	/*
	 * Determine name of vdev.
	 */
	config = FUNC9(zhp, NULL);
	nvroot = FUNC2(config,
	    ZPOOL_CONFIG_VDEV_TREE);
	FUNC7(FUNC4(nvroot, ZPOOL_CONFIG_CHILDREN,
	    &child, &children) == 0);
	FUNC0(prs->prs_removing_vdev < children);
	vdev_name = FUNC10(g_zfs, zhp,
	    child[prs->prs_removing_vdev], B_TRUE);

	(void) FUNC5(FUNC3("remove: "));

	start = prs->prs_start_time;
	end = prs->prs_end_time;
	FUNC8(prs->prs_copied, copied_buf, sizeof (copied_buf));

	/*
	 * Removal is finished or canceled.
	 */
	if (prs->prs_state == DSS_FINISHED) {
		uint64_t minutes_taken = (end - start) / 60;

		(void) FUNC5(FUNC3("Removal of vdev %llu copied %s "
		    "in %lluh%um, completed on %s"),
		    (longlong_t)prs->prs_removing_vdev,
		    copied_buf,
		    (u_longlong_t)(minutes_taken / 60),
		    (uint_t)(minutes_taken % 60),
		    FUNC1((time_t *)&end));
	} else if (prs->prs_state == DSS_CANCELED) {
		(void) FUNC5(FUNC3("Removal of %s canceled on %s"),
		    vdev_name, FUNC1(&end));
	} else {
		uint64_t copied, total, elapsed, mins_left, hours_left;
		double fraction_done;
		uint_t rate;

		FUNC0(prs->prs_state == DSS_SCANNING);

		/*
		 * Removal is in progress.
		 */
		(void) FUNC5(FUNC3(
		    "Evacuation of %s in progress since %s"),
		    vdev_name, FUNC1(&start));

		copied = prs->prs_copied > 0 ? prs->prs_copied : 1;
		total = prs->prs_to_copy;
		fraction_done = (double)copied / total;

		/* elapsed time for this pass */
		elapsed = FUNC6(NULL) - prs->prs_start_time;
		elapsed = elapsed > 0 ? elapsed : 1;
		rate = copied / elapsed;
		rate = rate > 0 ? rate : 1;
		mins_left = ((total - copied) / rate) / 60;
		hours_left = mins_left / 60;

		FUNC8(copied, examined_buf, sizeof (examined_buf));
		FUNC8(total, total_buf, sizeof (total_buf));
		FUNC8(rate, rate_buf, sizeof (rate_buf));

		/*
		 * do not print estimated time if hours_left is more than
		 * 30 days
		 */
		(void) FUNC5(FUNC3("    %s copied out of %s at %s/s, "
		    "%.2f%% done"),
		    examined_buf, total_buf, rate_buf, 100 * fraction_done);
		if (hours_left < (30 * 24)) {
			(void) FUNC5(FUNC3(", %lluh%um to go\n"),
			    (u_longlong_t)hours_left, (uint_t)(mins_left % 60));
		} else {
			(void) FUNC5(FUNC3(
			    ", (copy is slow, no estimated time)\n"));
		}
	}

	if (prs->prs_mapping_memory > 0) {
		char mem_buf[7];
		FUNC8(prs->prs_mapping_memory, mem_buf, sizeof (mem_buf));
		(void) FUNC5(FUNC3("    %s memory used for "
		    "removed device mappings\n"),
		    mem_buf);
	}
}