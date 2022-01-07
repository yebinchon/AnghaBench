
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfs_cache_register (int *) ;
 int nfs_dns_resolve ;

int nfs_dns_resolver_init(void)
{
 return nfs_cache_register(&nfs_dns_resolve);
}
