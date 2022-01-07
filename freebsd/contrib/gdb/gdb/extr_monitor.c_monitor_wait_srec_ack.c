
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int MO_SREC_ACK_PLUS ;
 int MO_SREC_ACK_ROTATE ;
 TYPE_1__* current_monitor ;
 char readchar (int) ;
 int timeout ;

__attribute__((used)) static int
monitor_wait_srec_ack (void)
{
  int ch;

  if (current_monitor->flags & MO_SREC_ACK_PLUS)
    {
      return (readchar (timeout) == '+');
    }
  else if (current_monitor->flags & MO_SREC_ACK_ROTATE)
    {

      if ((ch = readchar (1)) < 0)
 return 0;
      if ((ch = readchar (1)) < 0)
 return 0;
      if ((ch = readchar (1)) < 0)
 return 0;
      if ((ch = readchar (1)) < 0)
 return 0;
    }
  return 1;
}
