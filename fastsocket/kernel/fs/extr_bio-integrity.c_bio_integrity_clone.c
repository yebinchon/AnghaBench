
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_vec {int dummy; } ;
struct bio_set {int dummy; } ;
struct bio_integrity_payload {int bip_vcnt; int bip_idx; int bip_sector; int bip_vec; } ;
struct bio {struct bio_integrity_payload* bi_integrity; } ;
typedef int gfp_t ;


 int BUG_ON (int ) ;
 int EIO ;
 struct bio_integrity_payload* bio_integrity_alloc_bioset (struct bio*,int ,int,struct bio_set*) ;
 int memcpy (int ,int ,int) ;

int bio_integrity_clone(struct bio *bio, struct bio *bio_src,
   gfp_t gfp_mask, struct bio_set *bs)
{
 struct bio_integrity_payload *bip_src = bio_src->bi_integrity;
 struct bio_integrity_payload *bip;

 BUG_ON(bip_src == ((void*)0));

 bip = bio_integrity_alloc_bioset(bio, gfp_mask, bip_src->bip_vcnt, bs);

 if (bip == ((void*)0))
  return -EIO;

 memcpy(bip->bip_vec, bip_src->bip_vec,
        bip_src->bip_vcnt * sizeof(struct bio_vec));

 bip->bip_sector = bip_src->bip_sector;
 bip->bip_vcnt = bip_src->bip_vcnt;
 bip->bip_idx = bip_src->bip_idx;

 return 0;
}
