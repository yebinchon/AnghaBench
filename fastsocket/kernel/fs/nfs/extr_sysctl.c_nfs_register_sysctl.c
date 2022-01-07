
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int * nfs_callback_sysctl_table ;
 int nfs_cb_sysctl_root ;
 int * register_sysctl_table (int ) ;

int nfs_register_sysctl(void)
{
 nfs_callback_sysctl_table = register_sysctl_table(nfs_cb_sysctl_root);
 if (nfs_callback_sysctl_table == ((void*)0))
  return -ENOMEM;
 return 0;
}
