
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {void (* sa_handler ) (int) ;int sa_mask; scalar_t__ sa_flags; } ;
typedef int sa ;


 int memset (struct sigaction*,int ,int) ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 int signal (int,void (*) (int)) ;

void
setup_sighandler(int signum, void (*handler)(int))
{
  (void) signal(signum, handler);

}
