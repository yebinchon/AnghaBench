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
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,char const* const*,char***) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char const* const*,int*) ; 

atf_error_t
FUNC4(const char *sfile,
                    const char *ofile,
                    const char *const optargs[],
                    bool *success)
{
    atf_error_t err;
    char **argv;

    err = FUNC0(sfile, ofile, optargs, &argv);
    if (FUNC1(err))
        goto out;

    err = FUNC3((const char *const *)argv, success);

    FUNC2(argv);
out:
    return err;
}