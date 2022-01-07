
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_process_status_t ;


 scalar_t__ EXIT_SUCCESS ;
 int INV (int) ;
 scalar_t__ atf_process_status_coredump (int const*) ;
 scalar_t__ atf_process_status_exited (int const*) ;
 int atf_process_status_exitstatus (int const*) ;
 scalar_t__ atf_process_status_signaled (int const*) ;
 int atf_process_status_termsig (int const*) ;
 int fprintf (int ,char*,char const*,...) ;
 int stderr ;

__attribute__((used)) static
void
update_success_from_status(const char *progname,
                           const atf_process_status_t *status, bool *success)
{
    bool s = atf_process_status_exited(status) &&
             atf_process_status_exitstatus(status) == EXIT_SUCCESS;

    if (atf_process_status_exited(status)) {
        if (atf_process_status_exitstatus(status) == EXIT_SUCCESS)
            INV(s);
        else {
            INV(!s);
            fprintf(stderr, "%s failed with exit code %d\n", progname,
                    atf_process_status_exitstatus(status));
        }
    } else if (atf_process_status_signaled(status)) {
        INV(!s);
        fprintf(stderr, "%s failed due to signal %d%s\n", progname,
                atf_process_status_termsig(status),
                atf_process_status_coredump(status) ? " (core dumped)" : "");
    } else {
        INV(!s);
        fprintf(stderr, "%s failed due to unknown reason\n", progname);
    }

    *success = s;
}
