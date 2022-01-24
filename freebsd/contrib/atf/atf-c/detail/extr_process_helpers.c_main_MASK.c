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
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int,char const* const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const* const,char const* const) ; 
 int FUNC2 (char const* const) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 (char const* const) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char const* const,char*) ; 

int
FUNC8(int argc, const char *const argv[])
{
    int exitcode;

    FUNC0(argc, argv, 2);

    if (FUNC7(argv[1], "echo") == 0) {
        FUNC0(argc, argv, 3);
        exitcode = FUNC2(argv[2]);
    } else if (FUNC7(argv[1], "exit-failure") == 0)
        exitcode = FUNC3();
    else if (FUNC7(argv[1], "exit-signal") == 0)
        exitcode = FUNC4();
    else if (FUNC7(argv[1], "exit-success") == 0)
        exitcode = FUNC5();
    else if (FUNC7(argv[1], "stdout-stderr") == 0) {
        FUNC0(argc, argv, 3);
        exitcode = FUNC6(argv[2]);
    } else {
        FUNC1(stderr, "%s: Unknown helper %s\n", argv[0], argv[1]);
        exitcode = EXIT_FAILURE;
    }

    return exitcode;
}