
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int m_tcpart; int m_tcname; int m_resfile; } ;
typedef int atf_tp_t ;
typedef int atf_error_t ;




 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int INV (int) ;
 int UNREACHABLE ;
 int atf_env_get (char*) ;
 int atf_env_has (char*) ;
 int atf_error_free (int ) ;
 int atf_fs_path_cstring (int *) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_no_error () ;
 int atf_tp_cleanup (int const*,int ) ;
 int atf_tp_has_tc (int const*,int ) ;
 int atf_tp_run (int const*,int ,int ) ;
 int print_warning (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int usage_error (char*,int ) ;

__attribute__((used)) static
atf_error_t
run_tc(const atf_tp_t *tp, struct params *p, int *exitcode)
{
    atf_error_t err;

    err = atf_no_error();

    if (!atf_tp_has_tc(tp, p->m_tcname)) {
        err = usage_error("Unknown test case `%s'", p->m_tcname);
        goto out;
    }

    if (!atf_env_has("__RUNNING_INSIDE_ATF_RUN") || strcmp(atf_env_get(
        "__RUNNING_INSIDE_ATF_RUN"), "internal-yes-value") != 0)
    {
        print_warning("Running test cases outside of kyua(1) is unsupported");
        print_warning("No isolation nor timeout control is being applied; you "
                      "may get unexpected failures; see atf-test-case(4)");
    }

    switch (p->m_tcpart) {
    case 129:
        err = atf_tp_run(tp, p->m_tcname, atf_fs_path_cstring(&p->m_resfile));
        if (atf_is_error(err)) {

            *exitcode = EXIT_FAILURE;
            atf_error_free(err);
        } else {
            *exitcode = EXIT_SUCCESS;
        }

        break;

    case 128:
        err = atf_tp_cleanup(tp, p->m_tcname);
        if (atf_is_error(err)) {

            *exitcode = EXIT_FAILURE;
            atf_error_free(err);
        } else {
            *exitcode = EXIT_SUCCESS;
        }

        break;

    default:
        UNREACHABLE;
    }

    INV(!atf_is_error(err));
out:
    return err;
}
