
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize_bits; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int i_blkbits; struct super_block* i_sb; } ;
struct ext4_group_info {char* bb_counters; scalar_t__ bb_fragments; } ;
struct ext4_group_desc {int bg_flags; } ;
struct buffer_head {char* b_data; int b_end_io; } ;
typedef int ext4_group_t ;
struct TYPE_2__ {struct inode* host; } ;


 int BUG_ON (int ) ;
 int EIO ;
 int ENOMEM ;
 int EXT4_BG_BLOCK_UNINIT ;
 int EXT4_MB_GRP_NEED_INIT (struct ext4_group_info*) ;
 int GFP_NOFS ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 int READ ;
 int SetPageUptodate (struct page*) ;
 scalar_t__ bitmap_uptodate (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int cpu_to_le16 (int ) ;
 int end_buffer_read_sync ;
 int ext4_block_bitmap (struct super_block*,struct ext4_group_desc*) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,int,int *) ;
 struct ext4_group_info* ext4_get_group_info (struct super_block*,int) ;
 int ext4_get_groups_count (struct super_block*) ;
 int ext4_init_block_bitmap (struct super_block*,struct buffer_head*,int,struct ext4_group_desc*) ;
 int ext4_lock_group (struct super_block*,int) ;
 int ext4_mb_generate_buddy (struct super_block*,char*,char*,int) ;
 int ext4_mb_generate_from_freelist (struct super_block*,char*,int) ;
 int ext4_mb_generate_from_pa (struct super_block*,char*,int) ;
 int ext4_unlock_group (struct super_block*,int) ;
 int get_bh (struct buffer_head*) ;
 int kfree (struct buffer_head**) ;
 struct buffer_head** kzalloc (int,int ) ;
 int lock_buffer (struct buffer_head*) ;
 int mb_debug (int,char*,int,...) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int,int) ;
 char* page_address (struct page*) ;
 struct buffer_head* sb_getblk (struct super_block*,int ) ;
 int set_bitmap_uptodate (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int submit_bh (int ,struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static int ext4_mb_init_cache(struct page *page, char *incore)
{
 ext4_group_t ngroups;
 int blocksize;
 int blocks_per_page;
 int groups_per_page;
 int err = 0;
 int i;
 ext4_group_t first_group;
 int first_block;
 struct super_block *sb;
 struct buffer_head *bhs;
 struct buffer_head **bh;
 struct inode *inode;
 char *data;
 char *bitmap;
 struct ext4_group_info *grinfo;

 mb_debug(1, "init page %lu\n", page->index);

 inode = page->mapping->host;
 sb = inode->i_sb;
 ngroups = ext4_get_groups_count(sb);
 blocksize = 1 << inode->i_blkbits;
 blocks_per_page = PAGE_CACHE_SIZE / blocksize;

 groups_per_page = blocks_per_page >> 1;
 if (groups_per_page == 0)
  groups_per_page = 1;


 if (groups_per_page > 1) {
  err = -ENOMEM;
  i = sizeof(struct buffer_head *) * groups_per_page;
  bh = kzalloc(i, GFP_NOFS);
  if (bh == ((void*)0))
   goto out;
 } else
  bh = &bhs;

 first_group = page->index * blocks_per_page / 2;


 for (i = 0; i < groups_per_page; i++) {
  struct ext4_group_desc *desc;

  if (first_group + i >= ngroups)
   break;

  grinfo = ext4_get_group_info(sb, first_group + i);






  if (PageUptodate(page) && !EXT4_MB_GRP_NEED_INIT(grinfo)) {
   bh[i] = ((void*)0);
   continue;
  }

  err = -EIO;
  desc = ext4_get_group_desc(sb, first_group + i, ((void*)0));
  if (desc == ((void*)0))
   goto out;

  err = -ENOMEM;
  bh[i] = sb_getblk(sb, ext4_block_bitmap(sb, desc));
  if (bh[i] == ((void*)0))
   goto out;

  if (bitmap_uptodate(bh[i]))
   continue;

  lock_buffer(bh[i]);
  if (bitmap_uptodate(bh[i])) {
   unlock_buffer(bh[i]);
   continue;
  }
  ext4_lock_group(sb, first_group + i);
  if (desc->bg_flags & cpu_to_le16(EXT4_BG_BLOCK_UNINIT)) {
   ext4_init_block_bitmap(sb, bh[i],
      first_group + i, desc);
   set_bitmap_uptodate(bh[i]);
   set_buffer_uptodate(bh[i]);
   ext4_unlock_group(sb, first_group + i);
   unlock_buffer(bh[i]);
   continue;
  }
  ext4_unlock_group(sb, first_group + i);
  if (buffer_uptodate(bh[i])) {




   set_bitmap_uptodate(bh[i]);
   unlock_buffer(bh[i]);
   continue;
  }
  get_bh(bh[i]);






  set_bitmap_uptodate(bh[i]);
  bh[i]->b_end_io = end_buffer_read_sync;
  submit_bh(READ, bh[i]);
  mb_debug(1, "read bitmap for group %u\n", first_group + i);
 }


 for (i = 0; i < groups_per_page; i++)
  if (bh[i])
   wait_on_buffer(bh[i]);

 err = -EIO;
 for (i = 0; i < groups_per_page; i++)
  if (bh[i] && !buffer_uptodate(bh[i]))
   goto out;

 err = 0;
 first_block = page->index * blocks_per_page;
 for (i = 0; i < blocks_per_page; i++) {
  int group;

  group = (first_block + i) >> 1;
  if (group >= ngroups)
   break;

  if (!bh[group - first_group])

   continue;







  data = page_address(page) + (i * blocksize);
  bitmap = bh[group - first_group]->b_data;





  if ((first_block + i) & 1) {

   BUG_ON(incore == ((void*)0));
   mb_debug(1, "put buddy for group %u in page %lu/%x\n",
    group, page->index, i * blocksize);
   grinfo = ext4_get_group_info(sb, group);
   grinfo->bb_fragments = 0;
   memset(grinfo->bb_counters, 0,
          sizeof(*grinfo->bb_counters) *
    (sb->s_blocksize_bits+2));



   ext4_lock_group(sb, group);

   memset(data, 0xff, blocksize);
   ext4_mb_generate_buddy(sb, data, incore, group);
   ext4_unlock_group(sb, group);
   incore = ((void*)0);
  } else {

   BUG_ON(incore != ((void*)0));
   mb_debug(1, "put bitmap for group %u in page %lu/%x\n",
    group, page->index, i * blocksize);


   ext4_lock_group(sb, group);
   memcpy(data, bitmap, blocksize);


   ext4_mb_generate_from_pa(sb, data, group);
   ext4_mb_generate_from_freelist(sb, data, group);
   ext4_unlock_group(sb, group);




   incore = data;
  }
 }
 SetPageUptodate(page);

out:
 if (bh) {
  for (i = 0; i < groups_per_page; i++)
   brelse(bh[i]);
  if (bh != &bhs)
   kfree(bh);
 }
 return err;
}
