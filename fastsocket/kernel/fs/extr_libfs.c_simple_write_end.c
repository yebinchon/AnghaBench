
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 int KM_USER0 ;
 int PAGE_CACHE_SIZE ;
 int flush_dcache_page (struct page*) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 int memset (void*,int ,unsigned int) ;
 int page_cache_release (struct page*) ;
 int simple_commit_write (struct file*,struct page*,unsigned int,unsigned int) ;
 int unlock_page (struct page*) ;

int simple_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 unsigned from = pos & (PAGE_CACHE_SIZE - 1);


 if (copied < len) {
  void *kaddr = kmap_atomic(page, KM_USER0);
  memset(kaddr + from + copied, 0, len - copied);
  flush_dcache_page(page);
  kunmap_atomic(kaddr, KM_USER0);
 }

 simple_commit_write(file, page, from, from+copied);

 unlock_page(page);
 page_cache_release(page);

 return copied;
}
