
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unregister_sysctl_table (int ) ;
 int xfs_table_header ;

void
xfs_sysctl_unregister(void)
{
 unregister_sysctl_table(xfs_table_header);
}
