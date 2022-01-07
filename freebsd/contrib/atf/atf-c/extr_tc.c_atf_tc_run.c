
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* pimpl; } ;
typedef TYPE_2__ atf_tc_t ;
typedef int atf_error_t ;
typedef int atf_dynstr_t ;
struct TYPE_14__ {scalar_t__ fail_count; scalar_t__ expect_fail_count; } ;
struct TYPE_12__ {int (* m_body ) (TYPE_2__ const*) ;} ;


 TYPE_3__ Current ;
 int UNREACHABLE ;
 int atf_no_error () ;
 int context_init (TYPE_3__*,TYPE_2__ const*,char const*) ;
 int expected_failure (TYPE_3__*,int *) ;
 int fail_requirement (TYPE_3__*,int *) ;
 int format_reason_fmt (int *,int *,int ,char*,scalar_t__) ;
 int pass (TYPE_3__*) ;
 int stub1 (TYPE_2__ const*) ;
 int validate_expect (TYPE_3__*) ;

atf_error_t
atf_tc_run(const atf_tc_t *tc, const char *resfile)
{
    context_init(&Current, tc, resfile);

    tc->pimpl->m_body(tc);

    validate_expect(&Current);

    if (Current.fail_count > 0) {
        atf_dynstr_t reason;

        format_reason_fmt(&reason, ((void*)0), 0, "%d checks failed; see output for "
            "more details", Current.fail_count);
        fail_requirement(&Current, &reason);
    } else if (Current.expect_fail_count > 0) {
        atf_dynstr_t reason;

        format_reason_fmt(&reason, ((void*)0), 0, "%d checks failed as expected; "
            "see output for more details", Current.expect_fail_count);
        expected_failure(&Current, &reason);
    } else {
        pass(&Current);
    }
    UNREACHABLE;
    return atf_no_error();
}
