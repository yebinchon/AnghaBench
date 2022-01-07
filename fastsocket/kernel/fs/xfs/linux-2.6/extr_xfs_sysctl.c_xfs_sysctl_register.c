
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int register_sysctl_table (int ) ;
 int xfs_root_table ;
 int xfs_table_header ;

int
xfs_sysctl_register(void)
{
 xfs_table_header = register_sysctl_table(xfs_root_table);
 if (!xfs_table_header)
  return -ENOMEM;
 return 0;
}
