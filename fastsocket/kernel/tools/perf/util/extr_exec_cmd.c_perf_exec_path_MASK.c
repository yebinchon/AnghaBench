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
 int /*<<< orphan*/  EXEC_PATH_ENVIRONMENT ; 
 int /*<<< orphan*/  PERF_EXEC_PATH ; 
 char const* argv_exec_path ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 

const char *FUNC2(void)
{
	const char *env;

	if (argv_exec_path)
		return argv_exec_path;

	env = FUNC0(EXEC_PATH_ENVIRONMENT);
	if (env && *env) {
		return env;
	}

	return FUNC1(PERF_EXEC_PATH);
}