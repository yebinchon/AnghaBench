
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct bio_vec {struct page* bv_page; } ;
struct bio {int bi_vcnt; struct bio* bi_private; struct bio_vec* bi_io_vec; } ;


 scalar_t__ PageCompound (struct page*) ;
 scalar_t__ PageDirty (struct page*) ;
 struct bio* bio_dirty_list ;
 int bio_dirty_lock ;
 int bio_dirty_work ;
 int bio_put (struct bio*) ;
 int page_cache_release (struct page*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void bio_check_pages_dirty(struct bio *bio)
{
 struct bio_vec *bvec = bio->bi_io_vec;
 int nr_clean_pages = 0;
 int i;

 for (i = 0; i < bio->bi_vcnt; i++) {
  struct page *page = bvec[i].bv_page;

  if (PageDirty(page) || PageCompound(page)) {
   page_cache_release(page);
   bvec[i].bv_page = ((void*)0);
  } else {
   nr_clean_pages++;
  }
 }

 if (nr_clean_pages) {
  unsigned long flags;

  spin_lock_irqsave(&bio_dirty_lock, flags);
  bio->bi_private = bio_dirty_list;
  bio_dirty_list = bio;
  spin_unlock_irqrestore(&bio_dirty_lock, flags);
  schedule_work(&bio_dirty_work);
 } else {
  bio_put(bio);
 }
}
