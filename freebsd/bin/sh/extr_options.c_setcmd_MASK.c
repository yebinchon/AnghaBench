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
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 char** argptr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int FUNC3 (int,char**) ; 

int
FUNC4(int argc, char **argv)
{
	if (argc == 1)
		return FUNC3(argc, argv);
	INTOFF;
	FUNC0(0);
	FUNC1();
	if (*argptr != NULL) {
		FUNC2(argc - (argptr - argv), argptr);
	}
	INTON;
	return 0;
}