
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
struct cachefiles_cache {int cache_cred; } ;


 struct cred* override_creds (int ) ;

__attribute__((used)) static inline void cachefiles_begin_secure(struct cachefiles_cache *cache,
        const struct cred **_saved_cred)
{
 *_saved_cred = override_creds(cache->cache_cred);
}
