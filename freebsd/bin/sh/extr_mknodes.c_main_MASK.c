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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 char* line ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(int argc, char *argv[])
{
	FILE *infp;

	if (argc != 3)
		FUNC0("usage: mknodes file");
	if ((infp = FUNC3(argv[1], "r")) == NULL)
		FUNC0("Can't open %s: %s", argv[1], FUNC8(errno));
	while (FUNC7(infp)) {
		if (line[0] == ' ' || line[0] == '\t')
			FUNC5();
		else if (line[0] != '\0')
			FUNC6();
	}
	FUNC2(infp);
	FUNC4(argv[2]);
	FUNC1(0);
}