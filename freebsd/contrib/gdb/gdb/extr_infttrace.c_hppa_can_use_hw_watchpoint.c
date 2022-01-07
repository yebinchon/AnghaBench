
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bp_hardware_watchpoint ;

int
hppa_can_use_hw_watchpoint (int type, int cnt, int ot)
{
  return (type == bp_hardware_watchpoint);
}
