
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;
typedef int handle_t ;


 int ENOMEM ;
 int PAGE_CACHE_SHIFT ;
 int __GFP_FS ;
 int ext4_discard_partial_page_buffers_no_lock (int *,struct inode*,struct page*,int,int,int) ;
 struct page* find_or_create_page (struct address_space*,int,int) ;
 int mapping_gfp_mask (struct address_space*) ;
 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;

int ext4_discard_partial_page_buffers(handle_t *handle,
  struct address_space *mapping, loff_t from,
  loff_t length, int flags)
{
 struct inode *inode = mapping->host;
 struct page *page;
 int err = 0;

 page = find_or_create_page(mapping, from >> PAGE_CACHE_SHIFT,
       mapping_gfp_mask(mapping) & ~__GFP_FS);
 if (!page)
  return -ENOMEM;

 err = ext4_discard_partial_page_buffers_no_lock(handle, inode, page,
  from, length, flags);

 unlock_page(page);
 page_cache_release(page);
 return err;
}
