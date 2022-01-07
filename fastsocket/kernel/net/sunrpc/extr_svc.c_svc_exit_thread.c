
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int dummy; } ;
struct svc_rqst {int rq_all; struct svc_rqst* rq_auth_data; struct svc_rqst* rq_argp; struct svc_rqst* rq_resp; struct svc_pool* rq_pool; struct svc_serv* rq_server; } ;
struct svc_pool {int sp_lock; int sp_nrthreads; } ;


 int kfree (struct svc_rqst*) ;
 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int svc_destroy (struct svc_serv*) ;
 int svc_release_buffer (struct svc_rqst*) ;

void
svc_exit_thread(struct svc_rqst *rqstp)
{
 struct svc_serv *serv = rqstp->rq_server;
 struct svc_pool *pool = rqstp->rq_pool;

 svc_release_buffer(rqstp);
 kfree(rqstp->rq_resp);
 kfree(rqstp->rq_argp);
 kfree(rqstp->rq_auth_data);

 spin_lock_bh(&pool->sp_lock);
 pool->sp_nrthreads--;
 list_del(&rqstp->rq_all);
 spin_unlock_bh(&pool->sp_lock);

 kfree(rqstp);


 if (serv)
  svc_destroy(serv);
}
