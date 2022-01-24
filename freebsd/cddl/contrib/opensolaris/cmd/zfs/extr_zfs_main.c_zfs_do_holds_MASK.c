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
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_3__ {char const* cb_snapname; int /*<<< orphan*/  cb_max_taglen; int /*<<< orphan*/  cb_max_namelen; int /*<<< orphan*/ ** cb_nvlp; scalar_t__ cb_recursive; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ holds_cbdata_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int ZFS_ITER_RECURSE ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_SNAPSHOT ; 
 int ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int,char**,char const*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  holds_callback ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 int FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int FUNC12 (int,char**,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC13(int argc, char **argv)
{
	int errors = 0;
	int c;
	int i;
	boolean_t scripted = B_FALSE;
	boolean_t literal = B_FALSE;
	boolean_t recursive = B_FALSE;
	const char *opts = "d:rHp";
	nvlist_t *nvl;

	int types = ZFS_TYPE_SNAPSHOT;
	holds_cbdata_t cb = { 0 };

	int limit = 0;
	int ret = 0;
	int flags = 0;

	/* check options */
	while ((c = FUNC1(argc, argv, opts)) != -1) {
		switch (c) {
		case 'd':
			limit = FUNC7(optarg, &flags);
			recursive = B_TRUE;
			break;
		case 'r':
			recursive = B_TRUE;
			break;
		case 'H':
			scripted = B_TRUE;
			break;
		case 'p':
			literal = B_TRUE;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC11(B_FALSE);
		}
	}

	if (recursive) {
		types |= ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME;
		flags |= ZFS_ITER_RECURSE;
	}

	argc -= optind;
	argv += optind;

	/* check number of arguments */
	if (argc < 1)
		FUNC11(B_FALSE);

	if (FUNC4(&nvl, NV_UNIQUE_NAME, 0) != 0)
		FUNC3();

	for (i = 0; i < argc; ++i) {
		char *snapshot = argv[i];
		const char *delim;
		const char *snapname = NULL;

		delim = FUNC10(snapshot, '@');
		if (delim != NULL) {
			snapname = delim + 1;
			if (recursive)
				snapshot[delim - snapshot] = '\0';
		}

		cb.cb_recursive = recursive;
		cb.cb_snapname = snapname;
		cb.cb_nvlp = &nvl;

		/*
		 *  1. collect holds data, set format options
		 */
		ret = FUNC12(argc, argv, flags, types, NULL, NULL, limit,
		    holds_callback, &cb);
		if (ret != 0)
			++errors;
	}

	/*
	 *  2. print holds data
	 */
	FUNC8(scripted, literal, cb.cb_max_namelen, cb.cb_max_taglen,
	    nvl);

	if (FUNC5(nvl))
		(void) FUNC9(FUNC2("no datasets available\n"));

	FUNC6(nvl);

	return (0 != errors);
}