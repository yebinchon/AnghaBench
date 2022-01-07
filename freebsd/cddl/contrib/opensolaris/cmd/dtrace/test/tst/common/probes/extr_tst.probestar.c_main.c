
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef int sigset_t ;
typedef int siginfo_t ;


 int SIGHUP ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigtimedwait (int *,int *,struct timespec*) ;

int
main(void)
{

    sigset_t set;
    siginfo_t info;
    struct timespec timeout;

    (void)sigemptyset(&set);
    (void)sigaddset(&set, SIGHUP);
    timeout.tv_sec = 1;
    timeout.tv_nsec = 0;

    for (;;)
        (void)sigtimedwait(&set, &info, &timeout);

    return (0);
}
