
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_unswitch_loops ;

__attribute__((used)) static bool
gate_rtl_unswitch (void)
{
  return flag_unswitch_loops;
}
