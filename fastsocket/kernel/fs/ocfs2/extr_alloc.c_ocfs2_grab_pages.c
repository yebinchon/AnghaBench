
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef unsigned long loff_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_CACHE_SHIFT ;
 struct page* grab_cache_page (struct address_space*,unsigned long) ;
 int mlog_errno (int) ;
 int ocfs2_unlock_and_free_pages (struct page**,int) ;

int ocfs2_grab_pages(struct inode *inode, loff_t start, loff_t end,
       struct page **pages, int *num)
{
 int numpages, ret = 0;
 struct address_space *mapping = inode->i_mapping;
 unsigned long index;
 loff_t last_page_bytes;

 BUG_ON(start > end);

 numpages = 0;
 last_page_bytes = PAGE_ALIGN(end);
 index = start >> PAGE_CACHE_SHIFT;
 do {
  pages[numpages] = grab_cache_page(mapping, index);
  if (!pages[numpages]) {
   ret = -ENOMEM;
   mlog_errno(ret);
   goto out;
  }

  numpages++;
  index++;
 } while (index < (last_page_bytes >> PAGE_CACHE_SHIFT));

out:
 if (ret != 0) {
  if (pages)
   ocfs2_unlock_and_free_pages(pages, numpages);
  numpages = 0;
 }

 *num = numpages;

 return ret;
}
