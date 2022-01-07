
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_set {scalar_t__ bio_integrity_pool; } ;


 int mempool_destroy (scalar_t__) ;

void bioset_integrity_free(struct bio_set *bs)
{
 if (bs->bio_integrity_pool)
  mempool_destroy(bs->bio_integrity_pool);
}
