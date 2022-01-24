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
 int /*<<< orphan*/  CHIOGPICKER ; 
 int /*<<< orphan*/  changer_fd ; 
 char* changer_name ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 char* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static int
FUNC6(const char *cname, int argc, char **argv)
{
	int picker;

	/* No arguments to this command. */

	++argv; --argc;

	if (argc) {
		FUNC5("%s: no arguments expected", cname);
		goto usage;
	}

	/* Get current picker from changer and display it. */
	if (FUNC3(changer_fd, CHIOGPICKER, &picker))
		FUNC0(1, "%s: CHIOGPICKER", changer_name);

	(void) FUNC4("%s: current picker: %d\n", changer_name, picker);

	return (0);

 usage:
	(void) FUNC1(stderr, "usage: %s %s\n", FUNC2(), cname);
	return (1);
}