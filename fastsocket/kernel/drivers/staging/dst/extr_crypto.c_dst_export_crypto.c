
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_node {int pool; } ;
struct bio {int dummy; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 int bio_put (struct bio*) ;
 int dst_export_crypto_action ;
 int dst_export_crypto_setup ;
 int thread_pool_schedule (int ,int ,int ,struct bio*,int ) ;

int dst_export_crypto(struct dst_node *n, struct bio *bio)
{
 int err;

 err = thread_pool_schedule(n->pool,
  dst_export_crypto_setup, dst_export_crypto_action,
  bio, MAX_SCHEDULE_TIMEOUT);
 if (err)
  goto err_out_exit;

 return 0;

err_out_exit:
 bio_put(bio);
 return err;
}
