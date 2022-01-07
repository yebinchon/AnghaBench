
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_set {scalar_t__ bio_pool; } ;


 int bio_put_slab (struct bio_set*) ;
 int bioset_integrity_free (struct bio_set*) ;
 int biovec_free_pools (struct bio_set*) ;
 int kfree (struct bio_set*) ;
 int mempool_destroy (scalar_t__) ;

void bioset_free(struct bio_set *bs)
{
 if (bs->bio_pool)
  mempool_destroy(bs->bio_pool);

 bioset_integrity_free(bs);
 biovec_free_pools(bs);
 bio_put_slab(bs);

 kfree(bs);
}
