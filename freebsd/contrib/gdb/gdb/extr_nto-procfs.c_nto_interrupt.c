
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nto_interrupt_twice ;
 int signal (int,int ) ;
 int target_stop () ;

__attribute__((used)) static void
nto_interrupt (int signo)
{

  signal (signo, nto_interrupt_twice);

  target_stop ();
}
