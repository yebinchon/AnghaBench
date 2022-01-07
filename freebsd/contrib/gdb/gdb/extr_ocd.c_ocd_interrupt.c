
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char OCD_AYT ;
 int ocd_interrupt_flag ;
 int ocd_interrupt_twice ;
 int ocd_put_packet (char*,int) ;
 int ocd_stop () ;
 int printf_unfiltered (char*) ;
 scalar_t__ remote_debug ;
 int signal (int,int ) ;

__attribute__((used)) static void
ocd_interrupt (int signo)
{

  signal (signo, ocd_interrupt_twice);

  if (remote_debug)
    printf_unfiltered ("ocd_interrupt called\n");

  {
    char buf[1];

    ocd_stop ();
    buf[0] = OCD_AYT;
    ocd_put_packet (buf, 1);
    ocd_interrupt_flag = 1;
  }
}
