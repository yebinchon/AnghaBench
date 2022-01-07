
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_core_fns (int *) ;
 int arm_netbsd_core_fns ;
 int arm_netbsd_elfcore_fns ;

void
_initialize_arm_netbsd_nat (void)
{
  add_core_fns (&arm_netbsd_core_fns);
  add_core_fns (&arm_netbsd_elfcore_fns);
}
