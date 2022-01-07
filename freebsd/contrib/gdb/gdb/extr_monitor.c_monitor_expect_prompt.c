
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prompt; } ;


 TYPE_1__* current_monitor ;
 int monitor_debug (char*) ;
 int monitor_expect (int ,char*,int) ;

int
monitor_expect_prompt (char *buf, int buflen)
{
  monitor_debug ("MON Expecting prompt\n");
  return monitor_expect (current_monitor->prompt, buf, buflen);
}
