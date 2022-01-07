
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_enc_pages_num; int * rq_enc_pages; } ;


 int __free_page (int ) ;
 int kfree (int *) ;

__attribute__((used)) static void
priv_release_snd_buf(struct rpc_rqst *rqstp)
{
 int i;

 for (i=0; i < rqstp->rq_enc_pages_num; i++)
  __free_page(rqstp->rq_enc_pages[i]);
 kfree(rqstp->rq_enc_pages);
}
