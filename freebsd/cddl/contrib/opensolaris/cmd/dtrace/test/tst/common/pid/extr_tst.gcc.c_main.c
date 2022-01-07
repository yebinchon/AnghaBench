
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;


 int SIGUSR1 ;
 int go () ;
 int intr ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigfillset (int *) ;

int
main(int argc, char **argv)
{
 struct sigaction sa;

 sa.sa_handler = intr;
 sigfillset(&sa.sa_mask);
 sa.sa_flags = 0;

 (void) sigaction(SIGUSR1, &sa, ((void*)0));

 for (;;) {
  go();
 }

 return (0);
}
