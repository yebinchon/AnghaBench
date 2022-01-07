
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; } ;
struct page {int dummy; } ;
struct bio {int dummy; } ;


 int BIO_RW_SYNCIO ;
 int BIO_RW_UNPLUG ;
 int ENOMEM ;
 int GFP_NOIO ;
 int PSWPOUT ;
 scalar_t__ WB_SYNC_ALL ;
 int WRITE ;
 int count_vm_event (int ) ;
 int end_swap_bio_write ;
 struct bio* get_swap_bio (int ,struct page*,int ) ;
 int set_page_dirty (struct page*) ;
 int set_page_writeback (struct page*) ;
 int submit_bio (int,struct bio*) ;
 scalar_t__ try_to_free_swap (struct page*) ;
 int unlock_page (struct page*) ;

int swap_writepage(struct page *page, struct writeback_control *wbc)
{
 struct bio *bio;
 int ret = 0, rw = WRITE;

 if (try_to_free_swap(page)) {
  unlock_page(page);
  goto out;
 }
 bio = get_swap_bio(GFP_NOIO, page, end_swap_bio_write);
 if (bio == ((void*)0)) {
  set_page_dirty(page);
  unlock_page(page);
  ret = -ENOMEM;
  goto out;
 }
 if (wbc->sync_mode == WB_SYNC_ALL)
  rw |= (1 << BIO_RW_SYNCIO) | (1 << BIO_RW_UNPLUG);
 count_vm_event(PSWPOUT);
 set_page_writeback(page);
 unlock_page(page);
 submit_bio(rw, bio);
out:
 return ret;
}
