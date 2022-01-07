
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_bdev; } ;


 int bdev_integrity_enabled (int ,int ) ;
 int bio_data_dir (struct bio*) ;
 scalar_t__ bio_integrity (struct bio*) ;

int bio_integrity_enabled(struct bio *bio)
{

 if (bio_integrity(bio))
  return 0;

 return bdev_integrity_enabled(bio->bi_bdev, bio_data_dir(bio));
}
