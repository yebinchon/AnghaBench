
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_pool_map {unsigned int npools; int mode; int count; } ;


 int SVC_POOL_AUTO ;
 int SVC_POOL_GLOBAL ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct svc_pool_map svc_pool_map ;
 int svc_pool_map_choose_mode () ;
 int svc_pool_map_init_percpu (struct svc_pool_map*) ;
 int svc_pool_map_init_pernode (struct svc_pool_map*) ;
 int svc_pool_map_mutex ;

__attribute__((used)) static unsigned int
svc_pool_map_get(void)
{
 struct svc_pool_map *m = &svc_pool_map;
 int npools = -1;

 mutex_lock(&svc_pool_map_mutex);

 if (m->count++) {
  mutex_unlock(&svc_pool_map_mutex);
  return m->npools;
 }

 if (m->mode == SVC_POOL_AUTO)
  m->mode = svc_pool_map_choose_mode();

 switch (m->mode) {
 case 129:
  npools = svc_pool_map_init_percpu(m);
  break;
 case 128:
  npools = svc_pool_map_init_pernode(m);
  break;
 }

 if (npools < 0) {

  npools = 1;
  m->mode = SVC_POOL_GLOBAL;
 }
 m->npools = npools;

 mutex_unlock(&svc_pool_map_mutex);
 return m->npools;
}
