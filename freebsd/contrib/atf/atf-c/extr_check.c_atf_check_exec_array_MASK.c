#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  atf_fs_path_t ;
typedef  int /*<<< orphan*/  atf_error_t ;
struct TYPE_7__ {TYPE_1__* pimpl; } ;
typedef  TYPE_2__ atf_check_result_t ;
struct TYPE_6__ {int /*<<< orphan*/  m_status; int /*<<< orphan*/  m_stderr; int /*<<< orphan*/  m_stdout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const* const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const* const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

atf_error_t
FUNC8(const char *const *argv, atf_check_result_t *r)
{
    atf_error_t err;
    atf_fs_path_t dir;

    err = FUNC6(&dir);
    if (FUNC5(err))
        goto out;

    err = FUNC2(r, argv, &dir);
    if (FUNC5(err)) {
        atf_error_t err2 = FUNC4(&dir);
        FUNC0(!FUNC5(err2));
        goto out;
    }

    err = FUNC7(argv, &r->pimpl->m_stdout, &r->pimpl->m_stderr,
                        &r->pimpl->m_status);
    if (FUNC5(err)) {
        FUNC1(r);
        goto out;
    }

    FUNC0(!FUNC5(err));

    FUNC3(&dir);
out:
    return err;
}