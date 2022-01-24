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
struct params {int /*<<< orphan*/  m_config; int /*<<< orphan*/  m_srcdir; } ;
typedef  int /*<<< orphan*/  atf_fs_path_t ;
typedef  int /*<<< orphan*/  atf_error_t ;
typedef  int /*<<< orphan*/  atf_dynstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
atf_error_t
FUNC15(struct params *p)
{
    atf_error_t err;
    atf_dynstr_t leafname;
    atf_fs_path_t exe, srcdir;
    bool b;

    err = FUNC4(&srcdir, &p->m_srcdir);
    if (FUNC10(err))
        goto out;

    if (!FUNC7(&srcdir)) {
        atf_fs_path_t srcdirabs;

        err = FUNC9(&srcdir, &srcdirabs);
        if (FUNC10(err))
            goto out_srcdir;

        FUNC6(&srcdir);
        srcdir = srcdirabs;
    }

    err = FUNC8(&srcdir, &leafname);
    if (FUNC10(err))
        goto out_srcdir;
    else {
        const bool libs = FUNC1(&leafname, ".libs");
        FUNC0(&leafname);

        if (libs) {
            err = FUNC12(&srcdir);
            if (FUNC10(err))
                goto out;
        }
    }

    err = FUNC4(&exe, &srcdir);
    if (FUNC10(err))
        goto out_srcdir;

    err = FUNC3(&exe, "%s", progname);
    if (FUNC10(err))
        goto out_exe;

    err = FUNC2(&exe, &b);
    if (!FUNC10(err)) {
        if (b) {
            err = FUNC11(&p->m_config, "srcdir",
                                 FUNC13(FUNC5(&srcdir)), true);
        } else {
            err = FUNC14("Cannot find the test program in the source "
                             "directory `%s'", FUNC5(&srcdir));
        }
    }

out_exe:
    FUNC6(&exe);
out_srcdir:
    FUNC6(&srcdir);
out:
    return err;
}