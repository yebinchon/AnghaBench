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

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  _SC_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const***,int*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  page_size ; 
 char* FUNC9 (char const*) ; 
 char* perf_more_info_string ; 
 char* perf_usage_string ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (int*,char const***) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 

int FUNC19(int argc, const char **argv)
{
	const char *cmd;

	page_size = FUNC17(_SC_PAGE_SIZE);

	cmd = FUNC9(argv[0]);
	if (!cmd)
		cmd = "perf-help";
	/* get debugfs mount point from /proc/mounts */
	FUNC1(NULL);
	/*
	 * "perf-xxxx" is the same as "perf xxxx", but we obviously:
	 *
	 *  - cannot take flags in between the "perf" and the "xxxx".
	 *  - cannot execute it externally (since it would just do
	 *    the same thing over again)
	 *
	 * So we just directly call the internal command handler, and
	 * die if that one cannot handle it.
	 */
	if (!FUNC10(cmd, "perf-")) {
		cmd += 5;
		argv[0] = cmd;
		FUNC5(argc, argv);
		FUNC2("cannot handle %s internally", cmd);
	}

	/* Look for flags.. */
	argv++;
	argc--;
	FUNC6(&argv, &argc, NULL);
	FUNC0();
	FUNC14();

	if (argc > 0) {
		if (!FUNC10(argv[0], "--"))
			argv[0] += 2;
	} else {
		/* The user didn't specify a command; give them help */
		FUNC11("\n usage: %s\n\n", perf_usage_string);
		FUNC8();
		FUNC11("\n %s\n\n", perf_more_info_string);
		FUNC3(1);
	}
	cmd = argv[0];

/* RHEL6 - attr tests supported only for x86 */
#if defined(__i386__) || defined(__x86_64)
	FUNC18();
#endif

	/*
	 * We use PATH to find perf commands, but we prepend some higher
	 * precedence paths: the "--exec-path" option, the PERF_EXEC_PATH
	 * environment, and the $(perfexecdir) from the Makefile at build
	 * time.
	 */
	FUNC15();
	/*
	 * Block SIGWINCH notifications so that the thread that wants it can
	 * unblock and get syscalls like select interrupted instead of waiting
	 * forever while the signal goes to some other non interested thread.
	 */
	FUNC12();

	while (1) {
		static int done_help;
		static int was_alias;

		was_alias = FUNC13(&argc, &argv);
		if (errno != ENOENT)
			break;

		if (was_alias) {
			FUNC4(stderr, "Expansion of alias '%s' failed; "
				"'%s' is not a perf-command\n",
				cmd, argv[0]);
			FUNC3(1);
		}
		if (!done_help) {
			cmd = argv[0] = FUNC7(cmd);
			done_help = 1;
		} else
			break;
	}

	FUNC4(stderr, "Failed to run command '%s': %s\n",
		cmd, FUNC16(errno));

	return 1;
}