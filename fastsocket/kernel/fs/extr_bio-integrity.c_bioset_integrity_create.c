
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio_set {int bio_integrity_pool; } ;
struct TYPE_2__ {int slab; } ;


 int BIO_MAX_PAGES ;
 TYPE_1__* bip_slab ;
 int mempool_create_slab_pool (int,int ) ;
 unsigned int vecs_to_idx (int ) ;

int bioset_integrity_create(struct bio_set *bs, int pool_size)
{
 unsigned int max_slab = vecs_to_idx(BIO_MAX_PAGES);

 if (bs->bio_integrity_pool)
  return 0;

 bs->bio_integrity_pool =
  mempool_create_slab_pool(pool_size, bip_slab[max_slab].slab);

 if (!bs->bio_integrity_pool)
  return -1;

 return 0;
}
