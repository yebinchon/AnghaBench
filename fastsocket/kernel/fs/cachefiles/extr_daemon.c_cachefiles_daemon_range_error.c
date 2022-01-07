
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cachefiles_cache {int dummy; } ;


 int EINVAL ;
 int kerror (char*) ;

__attribute__((used)) static int cachefiles_daemon_range_error(struct cachefiles_cache *cache,
      char *args)
{
 kerror("Free space limits must be in range"
        " 0%%<=stop<cull<run<100%%");

 return -EINVAL;
}
