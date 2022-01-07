
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_pool_map {scalar_t__ npools; int * pool_to; int * to_pool; int mode; int count; } ;


 int SVC_POOL_DEFAULT ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct svc_pool_map svc_pool_map ;
 int svc_pool_map_mutex ;

__attribute__((used)) static void
svc_pool_map_put(void)
{
 struct svc_pool_map *m = &svc_pool_map;

 mutex_lock(&svc_pool_map_mutex);

 if (!--m->count) {
  m->mode = SVC_POOL_DEFAULT;
  kfree(m->to_pool);
  m->to_pool = ((void*)0);
  kfree(m->pool_to);
  m->pool_to = ((void*)0);
  m->npools = 0;
 }

 mutex_unlock(&svc_pool_map_mutex);
}
