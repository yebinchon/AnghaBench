
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fscache_unregister_netfs (int *) ;
 int nfs_fscache_netfs ;

void nfs_fscache_unregister(void)
{
 fscache_unregister_netfs(&nfs_fscache_netfs);
}
