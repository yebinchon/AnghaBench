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
struct cmd_struct {char* cmd; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct cmd_struct*) ; 
 int /*<<< orphan*/  CMD_DEBUGFS_DIR ; 
 int /*<<< orphan*/  CMD_EXEC_PATH ; 
 int /*<<< orphan*/  CMD_PERF_DIR ; 
 int /*<<< orphan*/  CMD_WORK_TREE ; 
 int /*<<< orphan*/  PERF_DIR_ENVIRONMENT ; 
 int /*<<< orphan*/  PERF_HTML_PATH ; 
 int /*<<< orphan*/  PERF_WORK_TREE_ENVIRONMENT ; 
 struct cmd_struct* commands ; 
 char* debugfs_mountpoint ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  perf_usage_string ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int use_pager ; 

__attribute__((used)) static int FUNC14(const char ***argv, int *argc, int *envchanged)
{
	int handled = 0;

	while (*argc > 0) {
		const char *cmd = (*argv)[0];
		if (cmd[0] != '-')
			break;

		/*
		 * For legacy reasons, the "version" and "help"
		 * commands can be written with "--" prepended
		 * to make them look like flags.
		 */
		if (!FUNC10(cmd, "--help") || !FUNC10(cmd, "--version"))
			break;

		/*
		 * Check remaining flags.
		 */
		if (!FUNC6(cmd, CMD_EXEC_PATH)) {
			cmd += FUNC11(CMD_EXEC_PATH);
			if (*cmd == '=')
				FUNC5(cmd + 1);
			else {
				FUNC8(FUNC4());
				FUNC2(0);
			}
		} else if (!FUNC10(cmd, "--html-path")) {
			FUNC8(FUNC12(PERF_HTML_PATH));
			FUNC2(0);
		} else if (!FUNC10(cmd, "-p") || !FUNC10(cmd, "--paginate")) {
			use_pager = 1;
		} else if (!FUNC10(cmd, "--no-pager")) {
			use_pager = 0;
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC10(cmd, "--perf-dir")) {
			if (*argc < 2) {
				FUNC3(stderr, "No directory given for --perf-dir.\n");
				FUNC13(perf_usage_string);
			}
			FUNC9(PERF_DIR_ENVIRONMENT, (*argv)[1], 1);
			if (envchanged)
				*envchanged = 1;
			(*argv)++;
			(*argc)--;
			handled++;
		} else if (!FUNC6(cmd, CMD_PERF_DIR)) {
			FUNC9(PERF_DIR_ENVIRONMENT, cmd + FUNC11(CMD_PERF_DIR), 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC10(cmd, "--work-tree")) {
			if (*argc < 2) {
				FUNC3(stderr, "No directory given for --work-tree.\n");
				FUNC13(perf_usage_string);
			}
			FUNC9(PERF_WORK_TREE_ENVIRONMENT, (*argv)[1], 1);
			if (envchanged)
				*envchanged = 1;
			(*argv)++;
			(*argc)--;
		} else if (!FUNC6(cmd, CMD_WORK_TREE)) {
			FUNC9(PERF_WORK_TREE_ENVIRONMENT, cmd + FUNC11(CMD_WORK_TREE), 1);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC10(cmd, "--debugfs-dir")) {
			if (*argc < 2) {
				FUNC3(stderr, "No directory given for --debugfs-dir.\n");
				FUNC13(perf_usage_string);
			}
			FUNC1((*argv)[1]);
			if (envchanged)
				*envchanged = 1;
			(*argv)++;
			(*argc)--;
		} else if (!FUNC6(cmd, CMD_DEBUGFS_DIR)) {
			FUNC1(cmd + FUNC11(CMD_DEBUGFS_DIR));
			FUNC3(stderr, "dir: %s\n", debugfs_mountpoint);
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC10(cmd, "--list-cmds")) {
			unsigned int i;

			for (i = 0; i < FUNC0(commands); i++) {
				struct cmd_struct *p = commands+i;
				FUNC7("%s ", p->cmd);
			}
			FUNC2(0);
		} else {
			FUNC3(stderr, "Unknown option: %s\n", cmd);
			FUNC13(perf_usage_string);
		}

		(*argv)++;
		(*argc)--;
		handled++;
	}
	return handled;
}