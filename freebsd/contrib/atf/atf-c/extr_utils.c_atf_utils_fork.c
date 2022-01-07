
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int atf_dynstr_t ;


 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int atf_dynstr_cstring (int *) ;
 int atf_dynstr_fini (int *) ;
 int atf_tc_fail (char*) ;
 int atf_utils_redirect (int ,int ) ;
 int fork () ;
 int getpid () ;
 int init_out_filename (int *,int ,char*,int) ;

pid_t
atf_utils_fork(void)
{
    const pid_t pid = fork();
    if (pid == -1)
        atf_tc_fail("fork failed");

    if (pid == 0) {
        atf_dynstr_t out_name;
        init_out_filename(&out_name, getpid(), "out", 0);

        atf_dynstr_t err_name;
        init_out_filename(&err_name, getpid(), "err", 0);

        atf_utils_redirect(STDOUT_FILENO, atf_dynstr_cstring(&out_name));
        atf_utils_redirect(STDERR_FILENO, atf_dynstr_cstring(&err_name));

        atf_dynstr_fini(&err_name);
        atf_dynstr_fini(&out_name);
    }
    return pid;
}
