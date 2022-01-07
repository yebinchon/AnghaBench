
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct file {int f_flags; } ;
struct address_space {int host; } ;
typedef int pgoff_t ;
typedef int loff_t ;
struct TYPE_2__ {scalar_t__ clientCanCacheRead; } ;


 TYPE_1__* CIFS_I (int ) ;
 int ENOMEM ;
 int O_ACCMODE ;
 int O_WRONLY ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int PAGE_MASK ;
 scalar_t__ PageUptodate (struct page*) ;
 int SetPageChecked (struct page*) ;
 int cFYI (int,char*,long long,unsigned int) ;
 int cifs_readpage_worker (struct file*,struct page*,int*) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int,unsigned int) ;
 int i_size_read (int ) ;
 int zero_user_segments (struct page*,int ,int,int,int) ;

__attribute__((used)) static int cifs_write_begin(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned flags,
   struct page **pagep, void **fsdata)
{
 pgoff_t index = pos >> PAGE_CACHE_SHIFT;
 loff_t offset = pos & (PAGE_CACHE_SIZE - 1);
 loff_t page_start = pos & PAGE_MASK;
 loff_t i_size;
 struct page *page;
 int rc = 0;

 cFYI(1, "write_begin from %lld len %d", (long long)pos, len);

 page = grab_cache_page_write_begin(mapping, index, flags);
 if (!page) {
  rc = -ENOMEM;
  goto out;
 }

 if (PageUptodate(page))
  goto out;






 if (len == PAGE_CACHE_SIZE)
  goto out;







 if (CIFS_I(mapping->host)->clientCanCacheRead) {
  i_size = i_size_read(mapping->host);
  if (page_start >= i_size ||
      (offset == 0 && (pos + len) >= i_size)) {
   zero_user_segments(page, 0, offset,
        offset + len,
        PAGE_CACHE_SIZE);






   SetPageChecked(page);
   goto out;
  }
 }

 if ((file->f_flags & O_ACCMODE) != O_WRONLY) {





  cifs_readpage_worker(file, page, &page_start);
 } else {




 }
out:
 *pagep = page;
 return rc;
}
