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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int uint_t ;
typedef  void* uid_t ;
typedef  void* time_t ;
typedef  int /*<<< orphan*/  tbuf ;
struct tm {int dummy; } ;
struct passwd {char* pw_name; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_2__ {int /*<<< orphan*/  longfmt; int /*<<< orphan*/  internal; int /*<<< orphan*/  first; } ;
typedef  TYPE_1__ hist_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ZFS_NUM_LEGACY_HISTORY_EVENTS ; 
 int /*<<< orphan*/  ZPOOL_HIST_CMD ; 
 int /*<<< orphan*/  ZPOOL_HIST_DSID ; 
 int /*<<< orphan*/  ZPOOL_HIST_DSNAME ; 
 int /*<<< orphan*/  ZPOOL_HIST_ERRNO ; 
 int /*<<< orphan*/  ZPOOL_HIST_HOST ; 
 int /*<<< orphan*/  ZPOOL_HIST_INPUT_NVL ; 
 int /*<<< orphan*/  ZPOOL_HIST_INT_EVENT ; 
 int /*<<< orphan*/  ZPOOL_HIST_INT_NAME ; 
 int /*<<< orphan*/  ZPOOL_HIST_INT_STR ; 
 int /*<<< orphan*/  ZPOOL_HIST_IOCTL ; 
 int /*<<< orphan*/  ZPOOL_HIST_OUTPUT_NVL ; 
 int /*<<< orphan*/  ZPOOL_HIST_RECORD ; 
 int /*<<< orphan*/  ZPOOL_HIST_TIME ; 
 int /*<<< orphan*/  ZPOOL_HIST_TXG ; 
 int /*<<< orphan*/  ZPOOL_HIST_WHO ; 
 int /*<<< orphan*/  ZPOOL_HIST_ZONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct passwd* FUNC5 (void*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (void**,struct tm*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 char** zfs_history_event_names ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(zpool_handle_t *zhp, void *data)
{
	nvlist_t *nvhis;
	nvlist_t **records;
	uint_t numrecords;
	int ret, i;
	hist_cbdata_t *cb = (hist_cbdata_t *)data;

	cb->first = B_FALSE;

	(void) FUNC11(FUNC6("History for '%s':\n"), FUNC15(zhp));

	if ((ret = FUNC14(zhp, &nvhis)) != 0)
		return (ret);

	FUNC13(FUNC10(nvhis, ZPOOL_HIST_RECORD,
	    &records, &numrecords) == 0);
	for (i = 0; i < numrecords; i++) {
		nvlist_t *rec = records[i];
		char tbuf[30] = "";

		if (FUNC8(rec, ZPOOL_HIST_TIME)) {
			time_t tsec;
			struct tm t;

			tsec = FUNC4(records[i],
			    ZPOOL_HIST_TIME);
			(void) FUNC7(&tsec, &t);
			(void) FUNC12(tbuf, sizeof (tbuf), "%F.%T", &t);
		}

		if (FUNC8(rec, ZPOOL_HIST_CMD)) {
			(void) FUNC11("%s %s", tbuf,
			    FUNC3(rec, ZPOOL_HIST_CMD));
		} else if (FUNC8(rec, ZPOOL_HIST_INT_EVENT)) {
			int ievent =
			    FUNC4(rec, ZPOOL_HIST_INT_EVENT);
			if (!cb->internal)
				continue;
			if (ievent >= ZFS_NUM_LEGACY_HISTORY_EVENTS) {
				(void) FUNC11("%s unrecognized record:\n",
				    tbuf);
				FUNC0(rec, 4);
				continue;
			}
			(void) FUNC11("%s [internal %s txg:%lld] %s", tbuf,
			    zfs_history_event_names[ievent],
			    FUNC4(rec, ZPOOL_HIST_TXG),
			    FUNC3(rec, ZPOOL_HIST_INT_STR));
		} else if (FUNC8(rec, ZPOOL_HIST_INT_NAME)) {
			if (!cb->internal)
				continue;
			(void) FUNC11("%s [txg:%lld] %s", tbuf,
			    FUNC4(rec, ZPOOL_HIST_TXG),
			    FUNC3(rec, ZPOOL_HIST_INT_NAME));
			if (FUNC8(rec, ZPOOL_HIST_DSNAME)) {
				(void) FUNC11(" %s (%llu)",
				    FUNC3(rec,
				    ZPOOL_HIST_DSNAME),
				    FUNC4(rec,
				    ZPOOL_HIST_DSID));
			}
			(void) FUNC11(" %s", FUNC3(rec,
			    ZPOOL_HIST_INT_STR));
		} else if (FUNC8(rec, ZPOOL_HIST_IOCTL)) {
			if (!cb->internal)
				continue;
			(void) FUNC11("%s ioctl %s\n", tbuf,
			    FUNC3(rec, ZPOOL_HIST_IOCTL));
			if (FUNC8(rec, ZPOOL_HIST_INPUT_NVL)) {
				(void) FUNC11("    input:\n");
				FUNC0(FUNC2(rec,
				    ZPOOL_HIST_INPUT_NVL), 8);
			}
			if (FUNC8(rec, ZPOOL_HIST_OUTPUT_NVL)) {
				(void) FUNC11("    output:\n");
				FUNC0(FUNC2(rec,
				    ZPOOL_HIST_OUTPUT_NVL), 8);
			}
			if (FUNC8(rec, ZPOOL_HIST_ERRNO)) {
				(void) FUNC11("    errno: %lld\n",
				    FUNC1(rec,
				    ZPOOL_HIST_ERRNO));
			}
		} else {
			if (!cb->internal)
				continue;
			(void) FUNC11("%s unrecognized record:\n", tbuf);
			FUNC0(rec, 4);
		}

		if (!cb->longfmt) {
			(void) FUNC11("\n");
			continue;
		}
		(void) FUNC11(" [");
		if (FUNC8(rec, ZPOOL_HIST_WHO)) {
			uid_t who = FUNC4(rec, ZPOOL_HIST_WHO);
			struct passwd *pwd = FUNC5(who);
			(void) FUNC11("user %d ", (int)who);
			if (pwd != NULL)
				(void) FUNC11("(%s) ", pwd->pw_name);
		}
		if (FUNC8(rec, ZPOOL_HIST_HOST)) {
			(void) FUNC11("on %s",
			    FUNC3(rec, ZPOOL_HIST_HOST));
		}
		if (FUNC8(rec, ZPOOL_HIST_ZONE)) {
			(void) FUNC11(":%s",
			    FUNC3(rec, ZPOOL_HIST_ZONE));
		}
		(void) FUNC11("]");
		(void) FUNC11("\n");
	}
	(void) FUNC11("\n");
	FUNC9(nvhis);

	return (ret);
}