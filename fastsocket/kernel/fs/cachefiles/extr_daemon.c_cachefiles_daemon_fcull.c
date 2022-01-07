
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cachefiles_cache {unsigned long fstop_percent; unsigned long frun_percent; unsigned long fcull_percent; } ;


 int EINVAL ;
 int _enter (char*,char*) ;
 int cachefiles_daemon_range_error (struct cachefiles_cache*,char*) ;
 unsigned long simple_strtoul (char*,char**,int) ;

__attribute__((used)) static int cachefiles_daemon_fcull(struct cachefiles_cache *cache, char *args)
{
 unsigned long fcull;

 _enter(",%s", args);

 if (!*args)
  return -EINVAL;

 fcull = simple_strtoul(args, &args, 10);
 if (args[0] != '%' || args[1] != '\0')
  return -EINVAL;

 if (fcull <= cache->fstop_percent || fcull >= cache->frun_percent)
  return cachefiles_daemon_range_error(cache, args);

 cache->fcull_percent = fcull;
 return 0;
}
