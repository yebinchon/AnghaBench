
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct buffer_head {int b_page; scalar_t__ b_size; } ;
struct bio {unsigned int bi_sector; unsigned int bi_size; TYPE_2__* bi_io_vec; TYPE_1__* bi_bdev; } ;
typedef unsigned int sector_t ;
struct TYPE_4__ {unsigned int bv_len; } ;
struct TYPE_3__ {int bd_inode; } ;


 int KM_USER0 ;
 int READ ;
 int RW_MASK ;
 int bh_offset (struct buffer_head*) ;
 int flush_dcache_page (int ) ;
 int i_size_read (int ) ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 scalar_t__ likely (int) ;
 int memset (void*,int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void guard_bh_eod(int rw, struct bio *bio, struct buffer_head *bh)
{
 sector_t maxsector;
 unsigned bytes;

 maxsector = i_size_read(bio->bi_bdev->bd_inode) >> 9;
 if (!maxsector)
  return;






 if (unlikely(bio->bi_sector >= maxsector))
  return;

 maxsector -= bio->bi_sector;
 bytes = bio->bi_size;
 if (likely((bytes >> 9) <= maxsector))
  return;


 bytes = maxsector << 9;


 bio->bi_size = bytes;
 bio->bi_io_vec[0].bv_len = bytes;


 if ((rw & RW_MASK) == READ) {
  void *kaddr = kmap_atomic(bh->b_page, KM_USER0);
  memset(kaddr + bh_offset(bh) + bytes, 0, bh->b_size - bytes);
  kunmap_atomic(kaddr, KM_USER0);
  flush_dcache_page(bh->b_page);
 }
}
