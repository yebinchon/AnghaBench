
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int sv_max_mesg; int sv_xdrsize; int sv_nrthreads; } ;
struct svc_rqst {void* rq_resp; void* rq_argp; struct svc_pool* rq_pool; struct svc_serv* rq_server; int rq_all; int rq_wait; } ;
struct svc_pool {int sp_lock; int sp_all_threads; int sp_nrthreads; } ;


 int ENOMEM ;
 struct svc_rqst* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 void* kmalloc (int ,int ) ;
 struct svc_rqst* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int svc_exit_thread (struct svc_rqst*) ;
 int svc_init_buffer (struct svc_rqst*,int ) ;

struct svc_rqst *
svc_prepare_thread(struct svc_serv *serv, struct svc_pool *pool)
{
 struct svc_rqst *rqstp;

 rqstp = kzalloc(sizeof(*rqstp), GFP_KERNEL);
 if (!rqstp)
  goto out_enomem;

 init_waitqueue_head(&rqstp->rq_wait);

 serv->sv_nrthreads++;
 spin_lock_bh(&pool->sp_lock);
 pool->sp_nrthreads++;
 list_add(&rqstp->rq_all, &pool->sp_all_threads);
 spin_unlock_bh(&pool->sp_lock);
 rqstp->rq_server = serv;
 rqstp->rq_pool = pool;

 rqstp->rq_argp = kmalloc(serv->sv_xdrsize, GFP_KERNEL);
 if (!rqstp->rq_argp)
  goto out_thread;

 rqstp->rq_resp = kmalloc(serv->sv_xdrsize, GFP_KERNEL);
 if (!rqstp->rq_resp)
  goto out_thread;

 if (!svc_init_buffer(rqstp, serv->sv_max_mesg))
  goto out_thread;

 return rqstp;
out_thread:
 svc_exit_thread(rqstp);
out_enomem:
 return ERR_PTR(-ENOMEM);
}
