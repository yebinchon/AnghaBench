
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_integrity_payload {int bip_work; int bip_end_io; struct bio* bip_bio; } ;
struct bio {int bi_end_io; struct bio_integrity_payload* bi_integrity; } ;


 int BUG_ON (int) ;
 int INIT_WORK (int *,int ) ;
 int bio_endio (struct bio*,int) ;
 int bio_integrity_verify_fn ;
 int kintegrityd_wq ;
 int queue_work (int ,int *) ;

void bio_integrity_endio(struct bio *bio, int error)
{
 struct bio_integrity_payload *bip = bio->bi_integrity;

 BUG_ON(bip->bip_bio != bio);





 if (error) {
  bio->bi_end_io = bip->bip_end_io;
  bio_endio(bio, error);

  return;
 }

 INIT_WORK(&bip->bip_work, bio_integrity_verify_fn);
 queue_work(kintegrityd_wq, &bip->bip_work);
}
