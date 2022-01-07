
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_list; } ;
struct svc_pool {int dummy; } ;


 int list_del (int *) ;

__attribute__((used)) static void svc_thread_dequeue(struct svc_pool *pool, struct svc_rqst *rqstp)
{
 list_del(&rqstp->rq_list);
}
