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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 char* program ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(int argc, char *argv[])
{
	program = argv[0];

	if (argc != 3)
		FUNC5();
	if (!FUNC4(argv[1], "djb2"))
		FUNC2("%d\n", FUNC0(argv[2]));
	else if (!FUNC4(argv[1], "r5"))
		FUNC2("%d\n", FUNC3(argv[2]));
	else
		FUNC5();
	FUNC1(0);
}