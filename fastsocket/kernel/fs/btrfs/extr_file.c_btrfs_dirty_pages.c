
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct extent_state {int dummy; } ;
struct btrfs_root {size_t sectorsize; } ;
typedef size_t loff_t ;


 int ClearPageChecked (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int btrfs_set_extent_delalloc (struct inode*,size_t,size_t,struct extent_state**) ;
 size_t i_size_read (struct inode*) ;
 int i_size_write (struct inode*,size_t) ;
 int set_page_dirty (struct page*) ;

int btrfs_dirty_pages(struct btrfs_root *root, struct inode *inode,
        struct page **pages, size_t num_pages,
        loff_t pos, size_t write_bytes,
        struct extent_state **cached)
{
 int err = 0;
 int i;
 u64 num_bytes;
 u64 start_pos;
 u64 end_of_last_block;
 u64 end_pos = pos + write_bytes;
 loff_t isize = i_size_read(inode);

 start_pos = pos & ~((u64)root->sectorsize - 1);
 num_bytes = (write_bytes + pos - start_pos +
      root->sectorsize - 1) & ~((u64)root->sectorsize - 1);

 end_of_last_block = start_pos + num_bytes - 1;
 err = btrfs_set_extent_delalloc(inode, start_pos, end_of_last_block,
     cached);
 if (err)
  return err;

 for (i = 0; i < num_pages; i++) {
  struct page *p = pages[i];
  SetPageUptodate(p);
  ClearPageChecked(p);
  set_page_dirty(p);
 }






 if (end_pos > isize)
  i_size_write(inode, end_pos);
 return 0;
}
