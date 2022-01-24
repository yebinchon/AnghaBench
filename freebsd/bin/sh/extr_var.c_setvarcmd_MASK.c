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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char**) ; 

int
FUNC3(int argc, char **argv)
{
	if (argc <= 2)
		return FUNC2(argc, argv);
	else if (argc == 3)
		FUNC1(argv[1], argv[2], 0);
	else
		FUNC0("too many arguments");
	return 0;
}