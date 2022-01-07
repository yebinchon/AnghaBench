
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_serv {scalar_t__ sv_nrthreads; struct svc_serv* sv_pools; int (* sv_shutdown ) (struct svc_serv*) ;int sv_temptimer; TYPE_1__* sv_program; } ;
struct TYPE_2__ {int pg_name; } ;


 int cache_clean_deferred (struct svc_serv*) ;
 int del_timer_sync (int *) ;
 int dprintk (char*,int ,scalar_t__) ;
 int kfree (struct svc_serv*) ;
 int printk (char*,struct svc_serv*) ;
 int stub1 (struct svc_serv*) ;
 int svc_close_all (struct svc_serv*) ;
 int svc_pool_map_put () ;
 scalar_t__ svc_serv_is_pooled (struct svc_serv*) ;
 int svc_sock_update_bufs (struct svc_serv*) ;

void
svc_destroy(struct svc_serv *serv)
{
 dprintk("svc: svc_destroy(%s, %d)\n",
    serv->sv_program->pg_name,
    serv->sv_nrthreads);

 if (serv->sv_nrthreads) {
  if (--(serv->sv_nrthreads) != 0) {
   svc_sock_update_bufs(serv);
   return;
  }
 } else
  printk("svc_destroy: no threads for serv=%p!\n", serv);

 del_timer_sync(&serv->sv_temptimer);
 svc_close_all(serv);

 if (serv->sv_shutdown)
  serv->sv_shutdown(serv);

 cache_clean_deferred(serv);

 if (svc_serv_is_pooled(serv))
  svc_pool_map_put();

 kfree(serv->sv_pools);
 kfree(serv);
}
