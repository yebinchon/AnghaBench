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
 int /*<<< orphan*/  CHIOIELEM ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  changer_fd ; 
 int /*<<< orphan*/  changer_name ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 char* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static int
FUNC6(const char *cname, int argc, char **argv)
{
	int timeout = 0;

	if (argc == 2) {
		timeout = FUNC0(argv[1]);
	} else if (argc > 1) {
		FUNC5("%s: too many arguments", cname);
		goto usage;
	}

	if (FUNC4(changer_fd, CHIOIELEM, &timeout))
		FUNC1(1, "%s: CHIOIELEM", changer_name);

	return (0);

 usage:
	(void) FUNC2(stderr, "usage: %s %s [<timeout>]\n",
		       FUNC3(), cname);
	return (1);
}