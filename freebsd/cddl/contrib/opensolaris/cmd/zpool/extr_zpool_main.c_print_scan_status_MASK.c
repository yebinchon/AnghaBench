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
typedef  int uint_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  total_buf ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  srate_buf ;
typedef  int /*<<< orphan*/  scanned_buf ;
typedef  int /*<<< orphan*/  processed_buf ;
struct TYPE_3__ {scalar_t__ pss_func; scalar_t__ pss_start_time; scalar_t__ pss_end_time; scalar_t__ pss_pass_scrub_pause; int pss_processed; scalar_t__ pss_state; int pss_examined; int pss_pass_exam; int pss_issued; int pss_pass_issued; int pss_to_examine; int pss_pass_start; scalar_t__ pss_pass_scrub_spent_paused; scalar_t__ pss_errors; } ;
typedef  TYPE_1__ pool_scan_stat_t ;
typedef  int /*<<< orphan*/  issued_buf ;
typedef  int /*<<< orphan*/  irate_buf ;

/* Variables and functions */
 scalar_t__ DSS_CANCELED ; 
 scalar_t__ DSS_FINISHED ; 
 scalar_t__ DSS_SCANNING ; 
 scalar_t__ POOL_SCAN_FUNCS ; 
 scalar_t__ POOL_SCAN_NONE ; 
 scalar_t__ POOL_SCAN_RESILVER ; 
 scalar_t__ POOL_SCAN_SCRUB ; 
 int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (scalar_t__*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

__attribute__((used)) static void
FUNC6(pool_scan_stat_t *ps)
{
	time_t start, end, pause;
	uint64_t total_secs_left;
	uint64_t elapsed, secs_left, mins_left, hours_left, days_left;
	uint64_t pass_scanned, scanned, pass_issued, issued, total;
	uint_t scan_rate, issue_rate;
	double fraction_done;
	char processed_buf[7], scanned_buf[7], issued_buf[7], total_buf[7];
	char srate_buf[7], irate_buf[7];

	(void) FUNC3(FUNC2("  scan: "));

	/* If there's never been a scan, there's not much to say. */
	if (ps == NULL || ps->pss_func == POOL_SCAN_NONE ||
	    ps->pss_func >= POOL_SCAN_FUNCS) {
		(void) FUNC3(FUNC2("none requested\n"));
		return;
	}

	start = ps->pss_start_time;
	end = ps->pss_end_time;
	pause = ps->pss_pass_scrub_pause;

	FUNC5(ps->pss_processed, processed_buf, sizeof (processed_buf));

	FUNC0(ps->pss_func == POOL_SCAN_SCRUB ||
	    ps->pss_func == POOL_SCAN_RESILVER);

	/* Scan is finished or canceled. */
	if (ps->pss_state == DSS_FINISHED) {
		total_secs_left = end - start;
		days_left = total_secs_left / 60 / 60 / 24;
		hours_left = (total_secs_left / 60 / 60) % 24;
		mins_left = (total_secs_left / 60) % 60;
		secs_left = (total_secs_left % 60);
		
		if (ps->pss_func == POOL_SCAN_SCRUB) {
			(void) FUNC3(FUNC2("scrub repaired %s "
                            "in %llu days %02llu:%02llu:%02llu "
			    "with %llu errors on %s"), processed_buf,
                            (u_longlong_t)days_left, (u_longlong_t)hours_left,
                            (u_longlong_t)mins_left, (u_longlong_t)secs_left,
                            (u_longlong_t)ps->pss_errors, FUNC1(&end));
		} else if (ps->pss_func == POOL_SCAN_RESILVER) {
                       (void) FUNC3(FUNC2("resilvered %s "
                           "in %llu days %02llu:%02llu:%02llu "
                           "with %llu errors on %s"), processed_buf,
                           (u_longlong_t)days_left, (u_longlong_t)hours_left,
                           (u_longlong_t)mins_left, (u_longlong_t)secs_left,
                           (u_longlong_t)ps->pss_errors, FUNC1(&end));

		}

		return;
	} else if (ps->pss_state == DSS_CANCELED) {
		if (ps->pss_func == POOL_SCAN_SCRUB) {
			(void) FUNC3(FUNC2("scrub canceled on %s"),
			    FUNC1(&end));
		} else if (ps->pss_func == POOL_SCAN_RESILVER) {
			(void) FUNC3(FUNC2("resilver canceled on %s"),
			    FUNC1(&end));
		}
		return;
	}

	FUNC0(ps->pss_state == DSS_SCANNING);

	/* Scan is in progress. Resilvers can't be paused. */
	if (ps->pss_func == POOL_SCAN_SCRUB) {
		if (pause == 0) {
			(void) FUNC3(FUNC2("scrub in progress since %s"),
			    FUNC1(&start));
		} else {
			(void) FUNC3(FUNC2("scrub paused since %s"),
			    FUNC1(&pause));
			(void) FUNC3(FUNC2("\tscrub started on %s"),
			    FUNC1(&start));
		}
	} else if (ps->pss_func == POOL_SCAN_RESILVER) {
		(void) FUNC3(FUNC2("resilver in progress since %s"),
		    FUNC1(&start));
	}

	scanned = ps->pss_examined;
	pass_scanned = ps->pss_pass_exam;
	issued = ps->pss_issued;
	pass_issued = ps->pss_pass_issued;
	total = ps->pss_to_examine;

	/* we are only done with a block once we have issued the IO for it */
	fraction_done = (double)issued / total;

	/* elapsed time for this pass, rounding up to 1 if it's 0 */
	elapsed = FUNC4(NULL) - ps->pss_pass_start;
	elapsed -= ps->pss_pass_scrub_spent_paused;
	elapsed = (elapsed != 0) ? elapsed : 1;

	scan_rate = pass_scanned / elapsed;
	issue_rate = pass_issued / elapsed;
	total_secs_left = (issue_rate != 0) ?
	    ((total - issued) / issue_rate) : UINT64_MAX;

	days_left = total_secs_left / 60 / 60 / 24;
	hours_left = (total_secs_left / 60 / 60) % 24;
	mins_left = (total_secs_left / 60) % 60;
	secs_left = (total_secs_left % 60);

	/* format all of the numbers we will be reporting */
	FUNC5(scanned, scanned_buf, sizeof (scanned_buf));
	FUNC5(issued, issued_buf, sizeof (issued_buf));
	FUNC5(total, total_buf, sizeof (total_buf));
	FUNC5(scan_rate, srate_buf, sizeof (srate_buf));
	FUNC5(issue_rate, irate_buf, sizeof (irate_buf));

	/* doo not print estimated time if we have a paused scrub */
	if (pause == 0) {
		(void) FUNC3(FUNC2("\t%s scanned at %s/s, "
		    "%s issued at %s/s, %s total\n"),
		    scanned_buf, srate_buf, issued_buf, irate_buf, total_buf);
	} else {
		(void) FUNC3(FUNC2("\t%s scanned, %s issued, %s total\n"),
                    scanned_buf, issued_buf, total_buf);
	}

	if (ps->pss_func == POOL_SCAN_RESILVER) {
		(void) FUNC3(FUNC2("\t%s resilvered, %.2f%% done"),
		    processed_buf, 100 * fraction_done);
	} else if (ps->pss_func == POOL_SCAN_SCRUB) {
		(void) FUNC3(FUNC2("\t%s repaired, %.2f%% done"),
		    processed_buf, 100 * fraction_done);
	}

	if (pause == 0) {
		if (issue_rate >= 10 * 1024 * 1024) {
			(void) FUNC3(FUNC2(", %llu days "
                            "%02llu:%02llu:%02llu to go\n"),
                            (u_longlong_t)days_left, (u_longlong_t)hours_left,
                            (u_longlong_t)mins_left, (u_longlong_t)secs_left);
		} else {
			(void) FUNC3(FUNC2(", no estimated "
                            "completion time\n"));
		}
	} else {
		(void) FUNC3(FUNC2("\n"));
	}
}