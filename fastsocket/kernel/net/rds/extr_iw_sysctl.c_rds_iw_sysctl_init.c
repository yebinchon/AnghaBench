
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int init_net ;
 int rds_iw_sysctl_hdr ;
 int rds_iw_sysctl_path ;
 int rds_iw_sysctl_table ;
 int register_net_sysctl_table (int *,int ,int ) ;

int rds_iw_sysctl_init(void)
{
 rds_iw_sysctl_hdr = register_net_sysctl_table(&init_net, rds_iw_sysctl_path, rds_iw_sysctl_table);
 if (!rds_iw_sysctl_hdr)
  return -ENOMEM;
 return 0;
}
