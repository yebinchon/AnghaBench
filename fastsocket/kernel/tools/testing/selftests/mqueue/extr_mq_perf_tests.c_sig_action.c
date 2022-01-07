
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ main_thread ;
 int pthread_kill (scalar_t__,int) ;
 scalar_t__ pthread_self () ;
 int shutdown (int ,char*,int ) ;
 int stderr ;

void sig_action(int signum, siginfo_t *info, void *context)
{
 if (pthread_self() != main_thread)
  pthread_kill(main_thread, signum);
 else {
  fprintf(stderr, "Caught signal %d, exiting\n", signum);
  shutdown(0, "", 0);
  fprintf(stderr, "\n\nReturned from shutdown?!?!\n\n");
  exit(0);
 }
}
