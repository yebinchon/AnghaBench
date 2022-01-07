
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio_set {int bio_integrity_pool; } ;
struct bio_integrity_payload {size_t bip_slab; int * bip_buf; } ;
struct bio {struct bio_integrity_payload* bi_integrity; } ;
struct TYPE_2__ {int slab; } ;


 int BIO_CLONED ;
 int BIO_FS_INTEGRITY ;
 int BUG_ON (int ) ;
 int bio_flagged (struct bio*,int ) ;
 TYPE_1__* bip_slab ;
 int kfree (int *) ;
 int kmem_cache_free (int ,struct bio_integrity_payload*) ;
 int mempool_free (struct bio_integrity_payload*,int ) ;
 scalar_t__ use_bip_pool (size_t) ;

void bio_integrity_free(struct bio *bio, struct bio_set *bs)
{
 struct bio_integrity_payload *bip = bio->bi_integrity;

 BUG_ON(bip == ((void*)0));


 if (!bio_flagged(bio, BIO_CLONED) && !bio_flagged(bio, BIO_FS_INTEGRITY)
     && bip->bip_buf != ((void*)0))
  kfree(bip->bip_buf);

 if (use_bip_pool(bip->bip_slab))
  mempool_free(bip, bs->bio_integrity_pool);
 else
  kmem_cache_free(bip_slab[bip->bip_slab].slab, bip);

 bio->bi_integrity = ((void*)0);
}
