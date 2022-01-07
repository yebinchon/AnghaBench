
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 int PAGE_CACHE_SIZE ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int lock_kernel () ;
 int page_cache_release (struct page*) ;
 int smb_updatepage (struct file*,struct page*,unsigned int,unsigned int) ;
 int unlock_kernel () ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int smb_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 int status;
 unsigned offset = pos & (PAGE_CACHE_SIZE - 1);

 lock_kernel();
 status = smb_updatepage(file, page, offset, copied);
 unlock_kernel();

 if (!status) {
  if (!PageUptodate(page) && copied == PAGE_CACHE_SIZE)
   SetPageUptodate(page);
  status = copied;
 }

 unlock_page(page);
 page_cache_release(page);

 return status;
}
