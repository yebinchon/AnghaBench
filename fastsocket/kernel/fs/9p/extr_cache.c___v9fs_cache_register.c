
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fscache_register_netfs (int *) ;
 int v9fs_cache_netfs ;
 int v9fs_init_vcookiecache () ;

int __v9fs_cache_register(void)
{
 int ret;
 ret = v9fs_init_vcookiecache();
 if (ret < 0)
  return ret;

 return fscache_register_netfs(&v9fs_cache_netfs);
}
