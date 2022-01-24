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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct cmd_struct {int option; int (* fn ) (int,char const**,char const*) ;int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int RUN_SETUP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int USE_PAGER ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int,char const**,char const*) ; 
 int use_browser ; 
 int use_pager ; 

__attribute__((used)) static int FUNC14(struct cmd_struct *p, int argc, const char **argv)
{
	int status;
	struct stat st;
	const char *prefix;

	prefix = NULL;
	if (p->option & RUN_SETUP)
		prefix = NULL; /* setup_perf_directory(); */

	if (use_browser == -1)
		use_browser = FUNC2(p->cmd);

	if (use_pager == -1 && p->option & RUN_SETUP)
		use_pager = FUNC3(p->cmd);
	if (use_pager == -1 && p->option & USE_PAGER)
		use_pager = 1;
	FUNC4();

	status = p->fn(argc, argv, prefix);
	FUNC6(status);

	if (status)
		return status & 0xff;

	/* Somebody closed stdout? */
	if (FUNC11(FUNC10(stdout), &st))
		return 0;
	/* Ignore write errors for pipes and sockets.. */
	if (FUNC0(st.st_mode) || FUNC1(st.st_mode))
		return 0;

	/* Check for ENOSPC and EIO errors.. */
	if (FUNC9(stdout))
		FUNC5("write failure on standard output: %s", FUNC12(errno));
	if (FUNC8(stdout))
		FUNC5("unknown write failure on standard output");
	if (FUNC7(stdout))
		FUNC5("close failed on standard output: %s", FUNC12(errno));
	return 0;
}