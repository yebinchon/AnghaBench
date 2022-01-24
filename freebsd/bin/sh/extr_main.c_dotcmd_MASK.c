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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* commandname ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int exitstatus ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int
FUNC6(int argc, char **argv)
{
	char *filename, *fullname;

	if (argc < 2)
		FUNC1("missing filename");

	exitstatus = 0;

	/*
	 * Because we have historically not supported any options,
	 * only treat "--" specially.
	 */
	filename = argc > 2 && FUNC5(argv[1], "--") == 0 ? argv[2] : argv[1];

	fullname = FUNC2(filename);
	FUNC4(fullname, 1);
	commandname = fullname;
	FUNC0(0);
	FUNC3();
	return exitstatus;
}