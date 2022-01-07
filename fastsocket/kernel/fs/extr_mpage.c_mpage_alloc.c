
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {int dummy; } ;
struct bio {int bi_sector; struct block_device* bi_bdev; } ;
typedef int sector_t ;
typedef int gfp_t ;
struct TYPE_2__ {int flags; } ;


 int PF_MEMALLOC ;
 struct bio* bio_alloc (int ,int) ;
 TYPE_1__* current ;

__attribute__((used)) static struct bio *
mpage_alloc(struct block_device *bdev,
  sector_t first_sector, int nr_vecs,
  gfp_t gfp_flags)
{
 struct bio *bio;

 bio = bio_alloc(gfp_flags, nr_vecs);

 if (bio == ((void*)0) && (current->flags & PF_MEMALLOC)) {
  while (!bio && (nr_vecs /= 2))
   bio = bio_alloc(gfp_flags, nr_vecs);
 }

 if (bio) {
  bio->bi_bdev = bdev;
  bio->bi_sector = first_sector;
 }
 return bio;
}
