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
 int /*<<< orphan*/  CHIOSPICKER ; 
 int /*<<< orphan*/  changer_fd ; 
 int /*<<< orphan*/  changer_name ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 char* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static int
FUNC6(const char *cname, int argc, char **argv)
{
	int picker;

	++argv; --argc;

	if (argc < 1) {
		FUNC5("%s: too few arguments", cname);
		goto usage;
	} else if (argc > 1) {
		FUNC5("%s: too many arguments", cname);
		goto usage;
	}

	picker = FUNC4(*argv);

	/* Set the changer picker. */
	if (FUNC3(changer_fd, CHIOSPICKER, &picker))
		FUNC0(1, "%s: CHIOSPICKER", changer_name);

	return (0);

 usage:
	(void) FUNC1(stderr, "usage: %s %s <picker>\n", FUNC2(), cname);
	return (1);
}