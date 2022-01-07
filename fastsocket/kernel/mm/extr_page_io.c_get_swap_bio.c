
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int val; } ;
typedef TYPE_2__ swp_entry_t ;
struct page {int dummy; } ;
struct bio {int bi_sector; int bi_vcnt; int bi_end_io; void* bi_size; scalar_t__ bi_idx; TYPE_1__* bi_io_vec; int bi_bdev; } ;
typedef int gfp_t ;
typedef int bio_end_io_t ;
struct TYPE_4__ {scalar_t__ bv_offset; void* bv_len; struct page* bv_page; } ;


 int PAGE_SHIFT ;
 void* PAGE_SIZE ;
 struct bio* bio_alloc (int ,int) ;
 int map_swap_page (TYPE_2__,int *) ;
 int page_private (struct page*) ;

__attribute__((used)) static struct bio *get_swap_bio(gfp_t gfp_flags,
    struct page *page, bio_end_io_t end_io)
{
 struct bio *bio;

 bio = bio_alloc(gfp_flags, 1);
 if (bio) {
  swp_entry_t entry;
  entry.val = page_private(page);
  bio->bi_sector = map_swap_page(entry, &bio->bi_bdev);
  bio->bi_sector <<= PAGE_SHIFT - 9;
  bio->bi_io_vec[0].bv_page = page;
  bio->bi_io_vec[0].bv_len = PAGE_SIZE;
  bio->bi_io_vec[0].bv_offset = 0;
  bio->bi_vcnt = 1;
  bio->bi_idx = 0;
  bio->bi_size = PAGE_SIZE;
  bio->bi_end_io = end_io;
 }
 return bio;
}
