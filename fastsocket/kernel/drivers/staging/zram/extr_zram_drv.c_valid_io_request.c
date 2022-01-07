
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {int disksize; } ;
struct bio {int bi_sector; int bi_size; } ;


 int SECTOR_SHIFT ;
 int ZRAM_LOGICAL_BLOCK_SIZE ;
 int ZRAM_SECTOR_PER_LOGICAL_BLOCK ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int valid_io_request(struct zram *zram, struct bio *bio)
{
 if (unlikely(
  (bio->bi_sector >= (zram->disksize >> SECTOR_SHIFT)) ||
  (bio->bi_sector & (ZRAM_SECTOR_PER_LOGICAL_BLOCK - 1)) ||
  (bio->bi_size & (ZRAM_LOGICAL_BLOCK_SIZE - 1)))) {

  return 0;
 }


 return 1;
}
