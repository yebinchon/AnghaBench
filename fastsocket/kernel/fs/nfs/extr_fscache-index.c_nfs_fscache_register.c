
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fscache_register_netfs (int *) ;
 int nfs_fscache_netfs ;

int nfs_fscache_register(void)
{
 return fscache_register_netfs(&nfs_fscache_netfs);
}
