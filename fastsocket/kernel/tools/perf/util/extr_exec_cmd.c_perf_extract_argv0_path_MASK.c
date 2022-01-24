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
 scalar_t__ argv0_path ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,int) ; 

const char *FUNC3(const char *argv0)
{
	const char *slash;

	if (!argv0 || !*argv0)
		return NULL;
	slash = argv0 + FUNC1(argv0);

	while (argv0 <= slash && !FUNC0(*slash))
		slash--;

	if (slash >= argv0) {
		argv0_path = FUNC2(argv0, slash - argv0);
		return argv0_path ? slash + 1 : NULL;
	}

	return argv0;
}