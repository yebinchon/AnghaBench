
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct o2hb_region {unsigned int hr_block_bits; unsigned int hr_slots_per_page; unsigned int hr_start_block; struct page** hr_slot_data; int hr_bdev; } ;
struct o2hb_bio_wait_ctxt {int dummy; } ;
struct bio {unsigned int bi_sector; int bi_end_io; struct o2hb_bio_wait_ctxt* bi_private; int bi_bdev; } ;


 int ENOMEM ;
 struct bio* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int ML_ERROR ;
 int ML_HB_BIO ;
 unsigned int PAGE_CACHE_SIZE ;
 int bio_add_page (struct bio*,struct page*,unsigned int,unsigned int) ;
 struct bio* bio_alloc (int ,int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int mlog (int ,char*,...) ;
 int o2hb_bio_end_io ;

__attribute__((used)) static struct bio *o2hb_setup_one_bio(struct o2hb_region *reg,
          struct o2hb_bio_wait_ctxt *wc,
          unsigned int *current_slot,
          unsigned int max_slots)
{
 int len, current_page;
 unsigned int vec_len, vec_start;
 unsigned int bits = reg->hr_block_bits;
 unsigned int spp = reg->hr_slots_per_page;
 unsigned int cs = *current_slot;
 struct bio *bio;
 struct page *page;





 bio = bio_alloc(GFP_ATOMIC, 16);
 if (!bio) {
  mlog(ML_ERROR, "Could not alloc slots BIO!\n");
  bio = ERR_PTR(-ENOMEM);
  goto bail;
 }


 bio->bi_sector = (reg->hr_start_block + cs) << (bits - 9);
 bio->bi_bdev = reg->hr_bdev;
 bio->bi_private = wc;
 bio->bi_end_io = o2hb_bio_end_io;

 vec_start = (cs << bits) % PAGE_CACHE_SIZE;
 while(cs < max_slots) {
  current_page = cs / spp;
  page = reg->hr_slot_data[current_page];

  vec_len = min(PAGE_CACHE_SIZE - vec_start,
         (max_slots-cs) * (PAGE_CACHE_SIZE/spp) );

  mlog(ML_HB_BIO, "page %d, vec_len = %u, vec_start = %u\n",
       current_page, vec_len, vec_start);

  len = bio_add_page(bio, page, vec_len, vec_start);
  if (len != vec_len) break;

  cs += vec_len / (PAGE_CACHE_SIZE/spp);
  vec_start = 0;
 }

bail:
 *current_slot = cs;
 return bio;
}
