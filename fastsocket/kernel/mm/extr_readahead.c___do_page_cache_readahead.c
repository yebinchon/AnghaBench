
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long index; int lru; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int page_tree; struct inode* host; } ;
typedef unsigned long pgoff_t ;
typedef int loff_t ;


 int BUG_ON (int) ;
 int LIST_HEAD (int ) ;
 int PAGE_CACHE_SHIFT ;
 int SetPageReadahead (struct page*) ;
 int i_size_read (struct inode*) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 struct page* page_cache_alloc_readahead (struct address_space*) ;
 int page_pool ;
 struct page* radix_tree_lookup (int *,unsigned long) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_pages (struct address_space*,struct file*,int *,int) ;

__attribute__((used)) static int
__do_page_cache_readahead(struct address_space *mapping, struct file *filp,
   pgoff_t offset, unsigned long nr_to_read,
   unsigned long lookahead_size)
{
 struct inode *inode = mapping->host;
 struct page *page;
 unsigned long end_index;
 LIST_HEAD(page_pool);
 int page_idx;
 int ret = 0;
 loff_t isize = i_size_read(inode);

 if (isize == 0)
  goto out;

 end_index = ((isize - 1) >> PAGE_CACHE_SHIFT);




 for (page_idx = 0; page_idx < nr_to_read; page_idx++) {
  pgoff_t page_offset = offset + page_idx;

  if (page_offset > end_index)
   break;

  rcu_read_lock();
  page = radix_tree_lookup(&mapping->page_tree, page_offset);
  rcu_read_unlock();
  if (page)
   continue;

  page = page_cache_alloc_readahead(mapping);
  if (!page)
   break;
  page->index = page_offset;
  list_add(&page->lru, &page_pool);
  if (page_idx == nr_to_read - lookahead_size)
   SetPageReadahead(page);
  ret++;
 }






 if (ret)
  read_pages(mapping, filp, &page_pool, ret);
 BUG_ON(!list_empty(&page_pool));
out:
 return ret;
}
