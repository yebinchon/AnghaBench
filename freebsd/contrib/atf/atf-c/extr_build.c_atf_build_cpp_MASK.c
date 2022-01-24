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
 int /*<<< orphan*/  ATF_BUILD_CPP ; 
 int /*<<< orphan*/  ATF_BUILD_CPPFLAGS ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const* const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char***) ; 

atf_error_t
FUNC8(const char *sfile,
              const char *ofile,
              const char *const optargs[],
              char ***argv)
{
    atf_error_t err;
    atf_list_t argv_list;

    err = FUNC6(&argv_list);
    if (FUNC4(err))
        goto out;

    err = FUNC2("ATF_BUILD_CPP", ATF_BUILD_CPP, &argv_list);
    if (FUNC4(err))
        goto out_list;

    err = FUNC2("ATF_BUILD_CPPFLAGS", ATF_BUILD_CPPFLAGS,
                            &argv_list);
    if (FUNC4(err))
        goto out_list;

    if (optargs != NULL) {
        err = FUNC3(optargs, &argv_list);
        if (FUNC4(err))
            goto out_list;
    }

    err = FUNC1("-o", ofile, &argv_list);
    if (FUNC4(err))
        goto out_list;

    err = FUNC0(sfile, &argv_list);
    if (FUNC4(err))
        goto out_list;

    err = FUNC7(&argv_list, argv);
    if (FUNC4(err))
        goto out_list;

out_list:
    FUNC5(&argv_list);
out:
    return err;
}