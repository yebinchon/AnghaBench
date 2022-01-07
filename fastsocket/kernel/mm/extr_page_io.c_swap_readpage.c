
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct bio {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PSWPIN ;
 int PageLocked (struct page*) ;
 int PageUptodate (struct page*) ;
 int READ ;
 int VM_BUG_ON (int) ;
 int count_vm_event (int ) ;
 int end_swap_bio_read ;
 struct bio* get_swap_bio (int ,struct page*,int ) ;
 int submit_bio (int ,struct bio*) ;
 int unlock_page (struct page*) ;

int swap_readpage(struct page *page)
{
 struct bio *bio;
 int ret = 0;

 VM_BUG_ON(!PageLocked(page));
 VM_BUG_ON(PageUptodate(page));
 bio = get_swap_bio(GFP_KERNEL, page, end_swap_bio_read);
 if (bio == ((void*)0)) {
  unlock_page(page);
  ret = -ENOMEM;
  goto out;
 }
 count_vm_event(PSWPIN);
 submit_bio(READ, bio);
out:
 return ret;
}
