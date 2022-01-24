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
struct TYPE_3__ {scalar_t__ cb_count; void* cb_allpools; void* cb_first; void* cb_explain; void* cb_dedup_stats; void* cb_verbose; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ status_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 void* B_TRUE ; 
 scalar_t__ NODATE ; 
 int FUNC0 (int,char**,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,char**,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char**,char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/ * optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  status_callback ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ timestamp_fmt ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(int argc, char **argv)
{
	int c;
	int ret;
	unsigned long interval = 0, count = 0;
	status_cbdata_t cb = { 0 };

	/* check options */
	while ((c = FUNC4(argc, argv, "vxDT:")) != -1) {
		switch (c) {
		case 'v':
			cb.cb_verbose = B_TRUE;
			break;
		case 'x':
			cb.cb_explain = B_TRUE;
			break;
		case 'D':
			cb.cb_dedup_stats = B_TRUE;
			break;
		case 'T':
			FUNC3(*optarg);
			break;
		case '?':
			(void) FUNC1(stderr, FUNC5("invalid option '%c'\n"),
			    optopt);
			FUNC9(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	FUNC2(&argc, argv, &interval, &count);

	if (argc == 0)
		cb.cb_allpools = B_TRUE;

	cb.cb_first = B_TRUE;

	for (;;) {
		if (timestamp_fmt != NODATE)
			FUNC6(timestamp_fmt);

		ret = FUNC0(argc, argv, B_TRUE, NULL,
		    status_callback, &cb);

		if (argc == 0 && cb.cb_count == 0)
			(void) FUNC7(FUNC5("no pools available\n"));
		else if (cb.cb_explain && cb.cb_first && cb.cb_allpools)
			(void) FUNC7(FUNC5("all pools are healthy\n"));

		if (ret != 0)
			return (ret);

		if (interval == 0)
			break;

		if (count != 0 && --count == 0)
			break;

		(void) FUNC8(interval);
	}

	return (0);
}