
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_list; } ;
struct svc_pool {int sp_threads; } ;


 int list_add (int *,int *) ;

__attribute__((used)) static void svc_thread_enqueue(struct svc_pool *pool, struct svc_rqst *rqstp)
{
 list_add(&rqstp->rq_list, &pool->sp_threads);
}
