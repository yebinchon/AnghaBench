
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_blkbits; struct address_space* i_mapping; } ;
struct buffer_head {int b_blocknr; int b_size; int b_state; struct buffer_head* b_this_page; } ;
struct block_device {struct inode* bd_inode; } ;
struct address_space {int private_lock; } ;
typedef int sector_t ;
typedef int pgoff_t ;


 int PAGE_CACHE_SHIFT ;
 int buffer_mapped (struct buffer_head*) ;
 struct page* find_get_page (struct address_space*,int) ;
 int get_bh (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_cache_release (struct page*) ;
 int page_has_buffers (struct page*) ;
 int printk (char*,int,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct buffer_head *
__find_get_block_slow(struct block_device *bdev, sector_t block)
{
 struct inode *bd_inode = bdev->bd_inode;
 struct address_space *bd_mapping = bd_inode->i_mapping;
 struct buffer_head *ret = ((void*)0);
 pgoff_t index;
 struct buffer_head *bh;
 struct buffer_head *head;
 struct page *page;
 int all_mapped = 1;

 index = block >> (PAGE_CACHE_SHIFT - bd_inode->i_blkbits);
 page = find_get_page(bd_mapping, index);
 if (!page)
  goto out;

 spin_lock(&bd_mapping->private_lock);
 if (!page_has_buffers(page))
  goto out_unlock;
 head = page_buffers(page);
 bh = head;
 do {
  if (!buffer_mapped(bh))
   all_mapped = 0;
  else if (bh->b_blocknr == block) {
   ret = bh;
   get_bh(bh);
   goto out_unlock;
  }
  bh = bh->b_this_page;
 } while (bh != head);






 if (all_mapped) {
  printk("__find_get_block_slow() failed. "
   "block=%llu, b_blocknr=%llu\n",
   (unsigned long long)block,
   (unsigned long long)bh->b_blocknr);
  printk("b_state=0x%08lx, b_size=%zu\n",
   bh->b_state, bh->b_size);
  printk("device blocksize: %d\n", 1 << bd_inode->i_blkbits);
 }
out_unlock:
 spin_unlock(&bd_mapping->private_lock);
 page_cache_release(page);
out:
 return ret;
}
