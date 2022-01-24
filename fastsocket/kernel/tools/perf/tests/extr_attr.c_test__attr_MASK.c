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
struct stat {int dummy; } ;

/* Variables and functions */
 char* BINDIR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct stat*) ; 
 char* FUNC2 () ; 
 int FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(void)
{
	struct stat st;
	char path_perf[PATH_MAX];
	char path_dir[PATH_MAX];

	/* First try developement tree tests. */
	if (!FUNC1("./tests", &st))
		return FUNC3("./tests", "./perf");

	/* Then installed path. */
	FUNC4(path_dir,  PATH_MAX, "%s/tests", FUNC2());
	FUNC4(path_perf, PATH_MAX, "%s/perf", BINDIR);

	if (!FUNC1(path_dir, &st) &&
	    !FUNC1(path_perf, &st))
		return FUNC3(path_dir, path_perf);

	FUNC0(stderr, " (ommitted)");
	return 0;
}