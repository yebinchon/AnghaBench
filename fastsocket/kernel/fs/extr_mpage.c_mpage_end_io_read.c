
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
struct bio_vec {struct page* bv_page; } ;
struct bio {int bi_vcnt; struct bio_vec* bi_io_vec; int bi_flags; } ;


 int BIO_UPTODATE ;
 int ClearPageUptodate (struct page*) ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int bio_put (struct bio*) ;
 int prefetchw (int *) ;
 int test_bit (int ,int *) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void mpage_end_io_read(struct bio *bio, int err)
{
 const int uptodate = test_bit(BIO_UPTODATE, &bio->bi_flags);
 struct bio_vec *bvec = bio->bi_io_vec + bio->bi_vcnt - 1;

 do {
  struct page *page = bvec->bv_page;

  if (--bvec >= bio->bi_io_vec)
   prefetchw(&bvec->bv_page->flags);

  if (uptodate) {
   SetPageUptodate(page);
  } else {
   ClearPageUptodate(page);
   SetPageError(page);
  }
  unlock_page(page);
 } while (bvec >= bio->bi_io_vec);
 bio_put(bio);
}
