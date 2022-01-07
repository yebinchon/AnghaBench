
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {void (* sa_handler ) (int) ;int sa_flags; int sa_mask; } ;


 int SA_RESTART ;
 void SIG_ERR (int) ;
 int sigaction (int,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;

void (*
bmake_signal(int s, void (*a)(int)))(int)
{
    struct sigaction sa, osa;

    sa.sa_handler = a;
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = SA_RESTART;

    if (sigaction(s, &sa, &osa) == -1)
 return SIG_ERR;
    else
 return osa.sa_handler;
}
