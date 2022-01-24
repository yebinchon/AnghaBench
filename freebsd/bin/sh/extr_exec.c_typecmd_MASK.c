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
 int /*<<< orphan*/  TYPECMD_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int FUNC2 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(int argc, char **argv)
{
	if (argc > 2 && FUNC1(argv[1], "--") == 0)
		argc--, argv++;
	return FUNC2(argc, argv, TYPECMD_TYPE, FUNC0("PATH", 1));
}