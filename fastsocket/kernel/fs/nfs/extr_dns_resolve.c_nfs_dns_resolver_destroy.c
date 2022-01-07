
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfs_cache_unregister (int *) ;
 int nfs_dns_resolve ;

void nfs_dns_resolver_destroy(void)
{
 nfs_cache_unregister(&nfs_dns_resolve);
}
