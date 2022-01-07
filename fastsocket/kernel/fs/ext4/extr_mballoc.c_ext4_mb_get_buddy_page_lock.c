
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct page {scalar_t__ mapping; } ;
struct inode {scalar_t__ i_mapping; } ;
struct ext4_buddy {struct page* bd_buddy_page; scalar_t__ bd_bitmap; struct page* bd_bitmap_page; } ;
typedef int ext4_group_t ;
struct TYPE_2__ {struct inode* s_buddy_cache; } ;


 int BUG_ON (int) ;
 int EIO ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int GFP_NOFS ;
 int PAGE_CACHE_SIZE ;
 struct page* find_or_create_page (scalar_t__,int,int ) ;
 scalar_t__ page_address (struct page*) ;

__attribute__((used)) static int ext4_mb_get_buddy_page_lock(struct super_block *sb,
  ext4_group_t group, struct ext4_buddy *e4b)
{
 struct inode *inode = EXT4_SB(sb)->s_buddy_cache;
 int block, pnum, poff;
 int blocks_per_page;
 struct page *page;

 e4b->bd_buddy_page = ((void*)0);
 e4b->bd_bitmap_page = ((void*)0);

 blocks_per_page = PAGE_CACHE_SIZE / sb->s_blocksize;





 block = group * 2;
 pnum = block / blocks_per_page;
 poff = block % blocks_per_page;
 page = find_or_create_page(inode->i_mapping, pnum, GFP_NOFS);
 if (!page)
  return -EIO;
 BUG_ON(page->mapping != inode->i_mapping);
 e4b->bd_bitmap_page = page;
 e4b->bd_bitmap = page_address(page) + (poff * sb->s_blocksize);

 if (blocks_per_page >= 2) {

  return 0;
 }

 block++;
 pnum = block / blocks_per_page;
 poff = block % blocks_per_page;
 page = find_or_create_page(inode->i_mapping, pnum, GFP_NOFS);
 if (!page)
  return -EIO;
 BUG_ON(page->mapping != inode->i_mapping);
 e4b->bd_buddy_page = page;
 return 0;
}
