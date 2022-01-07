
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct block_device {int dummy; } ;
struct bio {int bi_sector; struct block_device* bi_bdev; scalar_t__ bi_size; } ;
typedef int gfp_t ;
struct TYPE_2__ {int flags; } ;


 int PF_MEMALLOC ;
 struct bio* bio_alloc (int ,int) ;
 TYPE_1__* current ;

struct bio *
btrfs_bio_alloc(struct block_device *bdev, u64 first_sector, int nr_vecs,
  gfp_t gfp_flags)
{
 struct bio *bio;

 bio = bio_alloc(gfp_flags, nr_vecs);

 if (bio == ((void*)0) && (current->flags & PF_MEMALLOC)) {
  while (!bio && (nr_vecs /= 2))
   bio = bio_alloc(gfp_flags, nr_vecs);
 }

 if (bio) {
  bio->bi_size = 0;
  bio->bi_bdev = bdev;
  bio->bi_sector = first_sector;
 }
 return bio;
}
