
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int init_net ;
 int msecs_to_jiffies (int) ;
 int rds_sysctl_path ;
 int rds_sysctl_rds_table ;
 int rds_sysctl_reconnect_min ;
 int rds_sysctl_reconnect_min_jiffies ;
 int rds_sysctl_reg_table ;
 int register_net_sysctl_table (int *,int ,int ) ;

int rds_sysctl_init(void)
{
 rds_sysctl_reconnect_min = msecs_to_jiffies(1);
 rds_sysctl_reconnect_min_jiffies = rds_sysctl_reconnect_min;

 rds_sysctl_reg_table = register_net_sysctl_table(&init_net, rds_sysctl_path, rds_sysctl_rds_table);
 if (!rds_sysctl_reg_table)
  return -ENOMEM;
 return 0;
}
