
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fscache_unregister_netfs (int *) ;
 int v9fs_cache_netfs ;
 int v9fs_destroy_vcookiecache () ;

void __v9fs_cache_unregister(void)
{
 v9fs_destroy_vcookiecache();
 fscache_unregister_netfs(&v9fs_cache_netfs);
}
