#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* pimpl; } ;
typedef  TYPE_2__ atf_tc_t ;
typedef  int /*<<< orphan*/  atf_error_t ;
typedef  int /*<<< orphan*/  atf_dynstr_t ;
struct TYPE_14__ {scalar_t__ fail_count; scalar_t__ expect_fail_count; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* m_body ) (TYPE_2__ const*) ;} ;

/* Variables and functions */
 TYPE_3__ Current ; 
 int /*<<< orphan*/  UNREACHABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__ const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

atf_error_t
FUNC8(const atf_tc_t *tc, const char *resfile)
{
    FUNC1(&Current, tc, resfile);

    tc->pimpl->m_body(tc);

    FUNC7(&Current);

    if (Current.fail_count > 0) {
        atf_dynstr_t reason;

        FUNC4(&reason, NULL, 0, "%d checks failed; see output for "
            "more details", Current.fail_count);
        FUNC3(&Current, &reason);
    } else if (Current.expect_fail_count > 0) {
        atf_dynstr_t reason;

        FUNC4(&reason, NULL, 0, "%d checks failed as expected; "
            "see output for more details", Current.expect_fail_count);
        FUNC2(&Current, &reason);
    } else {
        FUNC5(&Current);
    }
    UNREACHABLE;
    return FUNC0();
}