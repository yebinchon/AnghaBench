
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGUSR1 ;
 int SIG_BLOCK ;
 int getpid () ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigismember (int *,int ) ;
 int sigpending (int *) ;
 int sigprocmask (int ,int *,int *) ;

int
main(int argc, char **argv)
{
 sigset_t ss;

 (void) sigemptyset(&ss);
 (void) sigaddset(&ss, SIGUSR1);
 (void) sigprocmask(SIG_BLOCK, &ss, ((void*)0));

 do {
  (void) getpid();
  (void) sigpending(&ss);
 } while (!sigismember(&ss, SIGUSR1));

 return (0);
}
