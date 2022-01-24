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
struct prog_found_pair {int found; int /*<<< orphan*/  prog; } ;
typedef  int /*<<< orphan*/  atf_fs_path_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atf_fs_access_x ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static atf_error_t
FUNC7(const char *dir, void *data)
{
    struct prog_found_pair *pf = data;
    atf_error_t err;

    if (pf->found)
        err = FUNC6();
    else {
        atf_fs_path_t p;

        err = FUNC4(&p, "%s/%s", dir, pf->prog);
        if (FUNC5(err))
            goto out_p;

        err = FUNC2(&p, atf_fs_access_x);
        if (!FUNC5(err))
            pf->found = true;
        else {
            FUNC1(err);
            FUNC0(!pf->found);
            err = FUNC6();
        }

out_p:
        FUNC3(&p);
    }

    return err;
}