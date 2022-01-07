
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ATF_REQUIRE (int) ;
 int EXIT_SUCCESS ;
 int atf_utils_fork () ;
 int atf_utils_wait (int const,int const,char const*,char const*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
fork_and_wait(const int exitstatus, const char* expout, const char* experr)
{
    const pid_t pid = atf_utils_fork();
    ATF_REQUIRE(pid != -1);
    if (pid == 0) {
        fprintf(stdout, "Some output\n");
        fprintf(stderr, "Some error\n");
        exit(123);
    }
    atf_utils_wait(pid, exitstatus, expout, experr);
    exit(EXIT_SUCCESS);
}
