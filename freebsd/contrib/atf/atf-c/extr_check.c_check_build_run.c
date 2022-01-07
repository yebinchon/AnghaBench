
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_process_status_t ;
typedef int atf_error_t ;


 int INV (int) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_process_status_fini (int *) ;
 int fork_and_wait (char const* const*,int *,int *,int *) ;
 int print_array (char const* const*,char*) ;
 int update_success_from_status (char const* const,int *,int*) ;

__attribute__((used)) static
atf_error_t
check_build_run(const char *const *argv, bool *success)
{
    atf_error_t err;
    atf_process_status_t status;

    print_array(argv, ">");

    err = fork_and_wait(argv, ((void*)0), ((void*)0), &status);
    if (atf_is_error(err))
        goto out;

    update_success_from_status(argv[0], &status, success);
    atf_process_status_fini(&status);

    INV(!atf_is_error(err));
out:
    return err;
}
