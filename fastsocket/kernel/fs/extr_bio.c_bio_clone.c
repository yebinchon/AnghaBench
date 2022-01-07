
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_destructor; int bi_max_vecs; } ;
typedef int gfp_t ;


 int __bio_clone (struct bio*,struct bio*) ;
 struct bio* bio_alloc_bioset (int ,int ,int ) ;
 int bio_fs_destructor ;
 scalar_t__ bio_integrity (struct bio*) ;
 int bio_integrity_clone (struct bio*,struct bio*,int ,int ) ;
 int bio_put (struct bio*) ;
 int fs_bio_set ;

struct bio *bio_clone(struct bio *bio, gfp_t gfp_mask)
{
 struct bio *b = bio_alloc_bioset(gfp_mask, bio->bi_max_vecs, fs_bio_set);

 if (!b)
  return ((void*)0);

 b->bi_destructor = bio_fs_destructor;
 __bio_clone(b, bio);

 if (bio_integrity(bio)) {
  int ret;

  ret = bio_integrity_clone(b, bio, gfp_mask, fs_bio_set);

  if (ret < 0) {
   bio_put(b);
   return ((void*)0);
  }
 }

 return b;
}
