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
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static inline const char *
FUNC2(int argc, char **argv, boolean_t un, size_t expected_argc,
    char **permsp)
{
	if (un && argc == expected_argc - 1)
		*permsp = NULL;
	else if (argc == expected_argc)
		*permsp = argv[argc - 2];
	else
		FUNC0(un, B_FALSE,
		    FUNC1("wrong number of parameters\n"));

	return (argv[argc - 1]);
}