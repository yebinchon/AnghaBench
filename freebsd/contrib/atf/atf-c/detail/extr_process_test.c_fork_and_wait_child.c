
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ATF_REQUIRE (int) ;
 int UNREACHABLE ;
 int fork () ;
 scalar_t__ waitpid (int,int*,int ) ;

__attribute__((used)) static
int
fork_and_wait_child(void (*child_func)(void))
{
    pid_t pid;
    int status;

    pid = fork();
    ATF_REQUIRE(pid != -1);
    if (pid == 0) {
        status = 0;
        child_func();
        UNREACHABLE;
    } else {
        ATF_REQUIRE(waitpid(pid, &status, 0) != 0);
    }

    return status;
}
