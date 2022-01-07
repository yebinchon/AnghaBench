
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int MO_HANDLE_NL ;
 int SERIAL_TIMEOUT ;
 TYPE_1__* current_monitor ;
 int error (char*) ;
 scalar_t__ in_monitor_wait ;
 scalar_t__ monitor_debug_p ;
 int monitor_desc ;
 int perror_with_name (char*) ;
 int puts_debug (char*,char*,char*) ;
 scalar_t__ remote_debug ;
 int serial_readchar (int ,int) ;
 int target_mourn_inferior () ;

__attribute__((used)) static int
readchar (int timeout)
{
  int c;
  static enum
    {
      last_random, last_nl, last_cr, last_crnl
    }
  state = last_random;
  int looping;

  do
    {
      looping = 0;
      c = serial_readchar (monitor_desc, timeout);

      if (c >= 0)
 {
   c &= 0x7f;


   if (monitor_debug_p || remote_debug)
     {
       char buf[2];
       buf[0] = c;
       buf[1] = '\0';
       puts_debug ("read -->", buf, "<--");
     }

 }


      if ((current_monitor->flags & MO_HANDLE_NL) != 0)
 {
   if ((c == '\r' && state == last_nl)
       || (c == '\n' && state == last_cr))
     {
       state = last_crnl;
       looping = 1;
     }
   else if (c == '\r')
     state = last_cr;
   else if (c != '\n')
     state = last_random;
   else
     {
       state = last_nl;
       c = '\r';
     }
 }
    }
  while (looping);

  if (c >= 0)
    return c;

  if (c == SERIAL_TIMEOUT)
      error ("Timeout reading from remote system.");

  perror_with_name ("remote-monitor");
}
