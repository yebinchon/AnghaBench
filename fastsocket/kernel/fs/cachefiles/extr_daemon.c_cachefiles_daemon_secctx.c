
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cachefiles_cache {char* secctx; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int _enter (char*,char*) ;
 int kerror (char*) ;
 char* kstrdup (char*,int ) ;

__attribute__((used)) static int cachefiles_daemon_secctx(struct cachefiles_cache *cache, char *args)
{
 char *secctx;

 _enter(",%s", args);

 if (!*args) {
  kerror("Empty security context specified");
  return -EINVAL;
 }

 if (cache->secctx) {
  kerror("Second security context specified");
  return -EINVAL;
 }

 secctx = kstrdup(args, GFP_KERNEL);
 if (!secctx)
  return -ENOMEM;

 cache->secctx = secctx;
 return 0;
}
