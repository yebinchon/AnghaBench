
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int monitor_interrupt ;
 int monitor_interrupt_query () ;
 int ofunc ;
 int signal (int,int ) ;

__attribute__((used)) static void
monitor_interrupt_twice (int signo)
{
  signal (signo, ofunc);

  monitor_interrupt_query ();

  signal (signo, monitor_interrupt);
}
