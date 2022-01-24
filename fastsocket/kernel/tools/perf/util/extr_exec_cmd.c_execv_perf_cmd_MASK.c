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
 int /*<<< orphan*/  FUNC0 (char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 char** FUNC2 (char const**) ; 

int FUNC3(const char **argv) {
	const char **nargv = FUNC2(argv);

	/* execvp() can only ever return if it fails */
	FUNC0("perf", (char **)nargv);

	FUNC1(nargv);
	return -1;
}