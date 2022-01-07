
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __dfp_traps ;

void
__dfp_enable_traps (void)
{
  __dfp_traps = 1;
}
