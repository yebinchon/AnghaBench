
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct bio_vec {struct page* bv_page; } ;
struct bio {int bi_vcnt; struct bio_vec* bi_io_vec; } ;


 int PageCompound (struct page*) ;
 int set_page_dirty_lock (struct page*) ;

void bio_set_pages_dirty(struct bio *bio)
{
 struct bio_vec *bvec = bio->bi_io_vec;
 int i;

 for (i = 0; i < bio->bi_vcnt; i++) {
  struct page *page = bvec[i].bv_page;

  if (page && !PageCompound(page))
   set_page_dirty_lock(page);
 }
}
