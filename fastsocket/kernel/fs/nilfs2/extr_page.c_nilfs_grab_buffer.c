
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {int dummy; } ;
struct address_space {int * assoc_mapping; } ;
typedef unsigned long pgoff_t ;


 scalar_t__ NILFS_MDT (struct inode*) ;
 int PAGE_CACHE_SHIFT ;
 struct buffer_head* __nilfs_get_page_block (struct page*,unsigned long,unsigned long,int,unsigned long) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int buffer_nilfs_node (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 struct page* find_lock_page (int *,unsigned long) ;
 struct page* grab_cache_page (struct address_space*,unsigned long) ;
 int nilfs_copy_buffer (struct buffer_head*,struct buffer_head*) ;
 int nilfs_mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;
 int page_cache_release (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

struct buffer_head *nilfs_grab_buffer(struct inode *inode,
          struct address_space *mapping,
          unsigned long blkoff,
          unsigned long b_state)
{
 int blkbits = inode->i_blkbits;
 pgoff_t index = blkoff >> (PAGE_CACHE_SHIFT - blkbits);
 struct page *page, *opage;
 struct buffer_head *bh, *obh;

 page = grab_cache_page(mapping, index);
 if (unlikely(!page))
  return ((void*)0);

 bh = __nilfs_get_page_block(page, blkoff, index, blkbits, b_state);
 if (unlikely(!bh)) {
  unlock_page(page);
  page_cache_release(page);
  return ((void*)0);
 }
 if (!buffer_uptodate(bh) && mapping->assoc_mapping != ((void*)0)) {





  opage = find_lock_page(mapping->assoc_mapping, index);
  if (!opage)
   return bh;

  obh = __nilfs_get_page_block(opage, blkoff, index, blkbits,
          b_state);
  if (buffer_uptodate(obh)) {
   nilfs_copy_buffer(bh, obh);
   if (buffer_dirty(obh)) {
    nilfs_mark_buffer_dirty(bh);
    if (!buffer_nilfs_node(bh) && NILFS_MDT(inode))
     nilfs_mdt_mark_dirty(inode);
   }
  }
  brelse(obh);
  unlock_page(opage);
  page_cache_release(opage);
 }
 return bh;
}
