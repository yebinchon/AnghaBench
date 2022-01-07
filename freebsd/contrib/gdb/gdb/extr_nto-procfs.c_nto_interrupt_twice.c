
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int interrupt_query () ;
 void ofunc (int) ;
 int signal (int,void (*) (int)) ;

__attribute__((used)) static void
nto_interrupt_twice (int signo)
{
  signal (signo, ofunc);
  interrupt_query ();
  signal (signo, nto_interrupt_twice);
}
