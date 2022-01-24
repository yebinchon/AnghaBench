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
typedef  int /*<<< orphan*/  atf_list_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATF_BUILD_CC ; 
 int /*<<< orphan*/  ATF_BUILD_CFLAGS ; 
 int /*<<< orphan*/  ATF_BUILD_CPPFLAGS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const* const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char***) ; 

atf_error_t
FUNC7(const char *sfile,
              const char *ofile,
              const char *const optargs[],
              char ***argv)
{
    atf_error_t err;
    atf_list_t argv_list;

    err = FUNC5(&argv_list);
    if (FUNC3(err))
        goto out;

    err = FUNC0("ATF_BUILD_CC", ATF_BUILD_CC, &argv_list);
    if (FUNC3(err))
        goto out_list;

    err = FUNC0("ATF_BUILD_CPPFLAGS", ATF_BUILD_CPPFLAGS,
                            &argv_list);
    if (FUNC3(err))
        goto out_list;

    err = FUNC0("ATF_BUILD_CFLAGS", ATF_BUILD_CFLAGS, &argv_list);
    if (FUNC3(err))
        goto out_list;

    if (optargs != NULL) {
        err = FUNC1(optargs, &argv_list);
        if (FUNC3(err))
            goto out_list;
    }

    err = FUNC2(sfile, ofile, &argv_list);
    if (FUNC3(err))
        goto out_list;

    err = FUNC6(&argv_list, argv);
    if (FUNC3(err))
        goto out_list;

out_list:
    FUNC4(&argv_list);
out:
    return err;
}