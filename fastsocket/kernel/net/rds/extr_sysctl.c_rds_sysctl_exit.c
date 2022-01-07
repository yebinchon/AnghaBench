
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ rds_sysctl_reg_table ;
 int unregister_net_sysctl_table (scalar_t__) ;

void rds_sysctl_exit(void)
{
 if (rds_sysctl_reg_table)
  unregister_net_sysctl_table(rds_sysctl_reg_table);
}
