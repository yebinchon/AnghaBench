
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_trans {struct dst_node* n; } ;
struct dst_node {int pool; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 int dst_trans_crypto_action ;
 int dst_trans_crypto_setup ;
 int dst_trans_put (struct dst_trans*) ;
 int thread_pool_schedule (int ,int ,int ,struct dst_trans*,int ) ;

int dst_trans_crypto(struct dst_trans *t)
{
 struct dst_node *n = t->n;
 int err;

 err = thread_pool_schedule(n->pool,
  dst_trans_crypto_setup, dst_trans_crypto_action,
  t, MAX_SCHEDULE_TIMEOUT);
 if (err)
  goto err_out_exit;

 return 0;

err_out_exit:
 dst_trans_put(t);
 return err;
}
