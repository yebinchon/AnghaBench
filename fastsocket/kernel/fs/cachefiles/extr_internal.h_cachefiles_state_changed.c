
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cachefiles_cache {int daemon_pollwq; int flags; } ;


 int CACHEFILES_STATE_CHANGED ;
 int set_bit (int ,int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static inline void cachefiles_state_changed(struct cachefiles_cache *cache)
{
 set_bit(CACHEFILES_STATE_CHANGED, &cache->flags);
 wake_up_all(&cache->daemon_pollwq);
}
