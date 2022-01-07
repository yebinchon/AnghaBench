
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_submit {int cur_page_fs_offset; int logical_offset_in_bio; struct bio* bio; } ;
struct dio {scalar_t__ is_async; } ;
struct block_device {int dummy; } ;
struct bio {int bi_end_io; int bi_sector; struct block_device* bi_bdev; } ;
typedef int sector_t ;


 int GFP_KERNEL ;
 struct bio* bio_alloc (int ,int) ;
 int dio_bio_end_aio ;
 int dio_bio_end_io ;

__attribute__((used)) static inline void
dio_bio_alloc(struct dio *dio, struct dio_submit *sdio,
       struct block_device *bdev,
       sector_t first_sector, int nr_vecs)
{
 struct bio *bio;





 bio = bio_alloc(GFP_KERNEL, nr_vecs);

 bio->bi_bdev = bdev;
 bio->bi_sector = first_sector;
 if (dio->is_async)
  bio->bi_end_io = dio_bio_end_aio;
 else
  bio->bi_end_io = dio_bio_end_io;

 sdio->bio = bio;
 sdio->logical_offset_in_bio = sdio->cur_page_fs_offset;
}
