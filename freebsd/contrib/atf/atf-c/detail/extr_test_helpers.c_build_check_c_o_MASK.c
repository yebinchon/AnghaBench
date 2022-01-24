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
typedef  int /*<<< orphan*/  atf_dynstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATF_INCLUDEDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,char const**,int*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

bool
FUNC6(const char *path)
{
    bool success;
    atf_dynstr_t iflag;
    const char *optargs[4];

    FUNC0(FUNC4(&iflag, "-I%s", FUNC5(
        "ATF_INCLUDEDIR", ATF_INCLUDEDIR)));

    optargs[0] = FUNC2(&iflag);
    optargs[1] = "-Wall";
    optargs[2] = "-Werror";
    optargs[3] = NULL;

    FUNC0(FUNC1(path, "test.o", optargs, &success));

    FUNC3(&iflag);

    return success;
}