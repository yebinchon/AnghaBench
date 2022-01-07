
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct page {struct address_space* mapping; } ;
struct ocfs2_write_ctxt {int w_num_pages; struct page** w_pages; struct page* w_target_page; } ;
struct inode {int i_sb; } ;
struct address_space {struct inode* host; } ;
typedef unsigned long loff_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 unsigned long PAGE_CACHE_SHIFT ;
 struct page* find_or_create_page (struct address_space*,unsigned long,int ) ;
 int lock_page (struct page*) ;
 int mlog_errno (int) ;
 unsigned long ocfs2_align_clusters_to_page_index (int ,int ) ;
 int ocfs2_pages_per_cluster (int ) ;
 int page_cache_get (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ocfs2_grab_pages_for_write(struct address_space *mapping,
          struct ocfs2_write_ctxt *wc,
          u32 cpos, loff_t user_pos, int new,
          struct page *mmap_page)
{
 int ret = 0, i;
 unsigned long start, target_index, index;
 struct inode *inode = mapping->host;

 target_index = user_pos >> PAGE_CACHE_SHIFT;






 if (new) {
  wc->w_num_pages = ocfs2_pages_per_cluster(inode->i_sb);
  start = ocfs2_align_clusters_to_page_index(inode->i_sb, cpos);
 } else {
  wc->w_num_pages = 1;
  start = target_index;
 }

 for(i = 0; i < wc->w_num_pages; i++) {
  index = start + i;

  if (index == target_index && mmap_page) {





   lock_page(mmap_page);

   if (mmap_page->mapping != mapping) {
    unlock_page(mmap_page);





    ret = -EINVAL;
    mlog_errno(ret);
    goto out;
   }

   page_cache_get(mmap_page);
   wc->w_pages[i] = mmap_page;
  } else {
   wc->w_pages[i] = find_or_create_page(mapping, index,
            GFP_NOFS);
   if (!wc->w_pages[i]) {
    ret = -ENOMEM;
    mlog_errno(ret);
    goto out;
   }
  }

  if (index == target_index)
   wc->w_target_page = wc->w_pages[i];
 }
out:
 return ret;
}
