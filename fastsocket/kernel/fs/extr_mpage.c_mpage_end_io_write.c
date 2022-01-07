
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; int flags; } ;
struct bio_vec {struct page* bv_page; } ;
struct bio {int bi_vcnt; struct bio_vec* bi_io_vec; int bi_flags; } ;
struct TYPE_2__ {int flags; } ;


 int AS_EIO ;
 int BIO_UPTODATE ;
 int bio_put (struct bio*) ;
 int end_page_writeback (struct page*) ;
 int prefetchw (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void mpage_end_io_write(struct bio *bio, int err)
{
 const int uptodate = test_bit(BIO_UPTODATE, &bio->bi_flags);
 struct bio_vec *bvec = bio->bi_io_vec + bio->bi_vcnt - 1;

 do {
  struct page *page = bvec->bv_page;

  if (--bvec >= bio->bi_io_vec)
   prefetchw(&bvec->bv_page->flags);

  if (!uptodate){
   if (page->mapping)
    set_bit(AS_EIO, &page->mapping->flags);
  }
  end_page_writeback(page);
 } while (bvec >= bio->bi_io_vec);
 bio_put(bio);
}
