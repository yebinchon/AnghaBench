
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; } ;
struct inode {int i_mapping; TYPE_1__* i_sb; } ;
struct ext4_ext_cache {int ec_block; int ec_len; scalar_t__ ec_start; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
typedef int pgoff_t ;
typedef int ext4_lblk_t ;
typedef unsigned char __u64 ;
typedef int __u32 ;
struct TYPE_2__ {unsigned char s_blocksize_bits; } ;


 int ENOMEM ;
 unsigned int EXT_INIT_MAX_LEN ;
 int EXT_MAX_BLOCKS ;
 int FIEMAP_EXTENT_DELALLOC ;
 int GFP_KERNEL ;
 int PAGECACHE_TAG_DIRTY ;
 unsigned char PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ buffer_delay (struct buffer_head*) ;
 scalar_t__ buffer_mapped (struct buffer_head*) ;
 int find_get_pages_tag (int ,int*,int ,unsigned int,struct page**) ;
 int kfree (struct page**) ;
 struct page** kmalloc (int,int ) ;
 unsigned int min (int,int) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_cache_release (struct page*) ;
 int page_has_buffers (struct page*) ;

__attribute__((used)) static int ext4_find_delayed_extent(struct inode *inode,
        struct ext4_ext_cache *newex)
{
 __u32 flags = 0;
 int ret = 0;
 ext4_lblk_t next_start = EXT_MAX_BLOCKS;
 unsigned int next_len;
 unsigned char blksize_bits = inode->i_sb->s_blocksize_bits;
 ext4_lblk_t end = 0;
 pgoff_t last_offset;
 pgoff_t offset;
 pgoff_t index;
 struct page **pages = ((void*)0);
 struct buffer_head *bh = ((void*)0);
 struct buffer_head *head = ((void*)0);
 unsigned int nr_pages = PAGE_SIZE / sizeof(struct page *);

 pages = kmalloc(PAGE_SIZE, GFP_KERNEL);
 if (pages == ((void*)0))
  return -ENOMEM;

 offset = ((__u64)newex->ec_block << blksize_bits) >>
   PAGE_SHIFT;

repeat:
 last_offset = offset;
 head = ((void*)0);
 ret = find_get_pages_tag(inode->i_mapping, &offset,
    PAGECACHE_TAG_DIRTY, nr_pages, pages);

 if (!(flags & FIEMAP_EXTENT_DELALLOC)) {

  if (ret == 0) {
out:
   for (index = 0; index < ret; index++)
    page_cache_release(pages[index]);

   kfree(pages);
   return EXT_MAX_BLOCKS;
  }


  end = ((__u64)pages[0]->index << PAGE_SHIFT) >>
     blksize_bits;
  if (!page_has_buffers(pages[0]))
   goto out;
  head = page_buffers(pages[0]);
  if (!head)
   goto out;

  bh = head;
  do {
   if (buffer_mapped(bh) &&
       (end >= newex->ec_block)) {

    if (end > newex->ec_block +
     newex->ec_len)



     goto out;
    goto found_mapped_buffer;
   }
   bh = bh->b_this_page;
   end++;
  } while (bh != head);


  goto out;
 } else {

  if (ret > 0 && pages[0]->index == last_offset)
   head = page_buffers(pages[0]);
  bh = head;
 }

found_mapped_buffer:
 if (bh != ((void*)0) && buffer_delay(bh)) {

  if (!(flags & FIEMAP_EXTENT_DELALLOC)) {




   flags |= FIEMAP_EXTENT_DELALLOC;
   next_start = end;
  }

  do {
   if (!buffer_delay(bh))
    goto found_delayed_extent;
   bh = bh->b_this_page;
   end++;
  } while (bh != head);

  for (index = 1; index < ret; index++) {
   if (!page_has_buffers(pages[index])) {
    bh = ((void*)0);
    break;
   }
   head = page_buffers(pages[index]);
   if (!head) {
    bh = ((void*)0);
    break;
   }
   if (pages[index]->index !=
    pages[0]->index + index) {

    bh = ((void*)0);
    break;
   }
   bh = head;
   do {
    if (!buffer_delay(bh))

     goto found_delayed_extent;
    bh = bh->b_this_page;
    end++;
   } while (bh != head);
  }
 } else if (!(flags & FIEMAP_EXTENT_DELALLOC))

  goto out;

found_delayed_extent:
 next_len = min(end - next_start,
         (ext4_lblk_t)EXT_INIT_MAX_LEN);
 if (ret == nr_pages && bh != ((void*)0) &&
  next_len < EXT_INIT_MAX_LEN &&
  buffer_delay(bh)) {

  for (index = 0; index < ret; index++)
   page_cache_release(pages[index]);
  goto repeat;
 }

 for (index = 0; index < ret; index++)
  page_cache_release(pages[index]);
 kfree(pages);


 if (newex->ec_start == 0) {
  newex->ec_block = next_start;
  newex->ec_len = next_len;
 }

 return next_start;
}
