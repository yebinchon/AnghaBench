
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_map_data {int is_our_pages; int nr_sgvecs; int sgvecs; int iovecs; } ;
struct bio {struct bio_map_data* bi_private; } ;


 int BIO_NULL_MAPPED ;
 scalar_t__ READ ;
 int __bio_copy_iov (struct bio*,int ,int ,int ,int,int ,int ) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_flagged (struct bio*,int ) ;
 int bio_free_map_data (struct bio_map_data*) ;
 int bio_put (struct bio*) ;

int bio_uncopy_user(struct bio *bio)
{
 struct bio_map_data *bmd = bio->bi_private;
 int ret = 0;

 if (!bio_flagged(bio, BIO_NULL_MAPPED))
  ret = __bio_copy_iov(bio, bmd->iovecs, bmd->sgvecs,
         bmd->nr_sgvecs, bio_data_dir(bio) == READ,
         0, bmd->is_our_pages);
 bio_free_map_data(bmd);
 bio_put(bio);
 return ret;
}
