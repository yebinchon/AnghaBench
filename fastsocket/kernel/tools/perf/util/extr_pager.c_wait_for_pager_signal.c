
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raise (int) ;
 int sigchain_pop (int) ;
 int wait_for_pager () ;

__attribute__((used)) static void wait_for_pager_signal(int signo)
{
 wait_for_pager();
 sigchain_pop(signo);
 raise(signo);
}
