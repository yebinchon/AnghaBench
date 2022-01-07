
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_destructor; } ;
typedef int gfp_t ;


 struct bio* bio_alloc_bioset (int ,int,int ) ;
 int bio_fs_destructor ;
 int fs_bio_set ;

struct bio *bio_alloc(gfp_t gfp_mask, int nr_iovecs)
{
 struct bio *bio = bio_alloc_bioset(gfp_mask, nr_iovecs, fs_bio_set);

 if (bio)
  bio->bi_destructor = bio_fs_destructor;

 return bio;
}
