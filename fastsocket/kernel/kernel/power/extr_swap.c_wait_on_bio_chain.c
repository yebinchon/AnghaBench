
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct bio {TYPE_1__* bi_io_vec; struct bio* bi_private; } ;
struct TYPE_2__ {struct page* bv_page; } ;


 int EIO ;
 scalar_t__ PageError (struct page*) ;
 int PageUptodate (struct page*) ;
 int bio_put (struct bio*) ;
 int put_page (struct page*) ;
 int wait_on_page_locked (struct page*) ;

__attribute__((used)) static int wait_on_bio_chain(struct bio **bio_chain)
{
 struct bio *bio;
 struct bio *next_bio;
 int ret = 0;

 if (bio_chain == ((void*)0))
  return 0;

 bio = *bio_chain;
 if (bio == ((void*)0))
  return 0;
 while (bio) {
  struct page *page;

  next_bio = bio->bi_private;
  page = bio->bi_io_vec[0].bv_page;
  wait_on_page_locked(page);
  if (!PageUptodate(page) || PageError(page))
   ret = -EIO;
  put_page(page);
  bio_put(bio);
  bio = next_bio;
 }
 *bio_chain = ((void*)0);
 return ret;
}
