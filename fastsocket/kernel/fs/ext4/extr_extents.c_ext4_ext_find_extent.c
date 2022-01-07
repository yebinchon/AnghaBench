
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_extent_header {int eh_max; int eh_entries; } ;
struct ext4_ext_path {short p_depth; int * p_ext; int p_block; int * p_idx; struct ext4_extent_header* p_hdr; struct buffer_head* p_bh; } ;
struct buffer_head {int dummy; } ;
typedef int ext4_lblk_t ;


 int EIO ;
 int ENOMEM ;
 struct ext4_ext_path* ERR_PTR (int ) ;
 int EXT4_ERROR_INODE (struct inode*,char*,short,short) ;
 int GFP_NOFS ;
 scalar_t__ bh_submit_read (struct buffer_head*) ;
 int bh_uptodate_or_lock (struct buffer_head*) ;
 int ext4_ext_binsearch (struct inode*,struct ext4_ext_path*,int ) ;
 int ext4_ext_binsearch_idx (struct inode*,struct ext4_ext_path*,int ) ;
 scalar_t__ ext4_ext_check_block (struct inode*,struct ext4_extent_header*,short,struct buffer_head*) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 int ext4_ext_pblock (int *) ;
 int ext4_ext_show_path (struct inode*,struct ext4_ext_path*) ;
 int ext4_idx_pblock (int *) ;
 struct ext4_extent_header* ext_block_hdr (struct buffer_head*) ;
 int ext_debug (char*,short,int ,int ) ;
 short ext_depth (struct inode*) ;
 struct ext4_extent_header* ext_inode_hdr (struct inode*) ;
 int kfree (struct ext4_ext_path*) ;
 struct ext4_ext_path* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int put_bh (struct buffer_head*) ;
 struct buffer_head* sb_getblk (int ,int ) ;
 scalar_t__ unlikely (int) ;

struct ext4_ext_path *
ext4_ext_find_extent(struct inode *inode, ext4_lblk_t block,
     struct ext4_ext_path *path)
{
 struct ext4_extent_header *eh;
 struct buffer_head *bh;
 short int depth, i, ppos = 0, alloc = 0;

 eh = ext_inode_hdr(inode);
 depth = ext_depth(inode);


 if (!path) {
  path = kzalloc(sizeof(struct ext4_ext_path) * (depth + 2),
    GFP_NOFS);
  if (!path)
   return ERR_PTR(-ENOMEM);
  alloc = 1;
 }
 path[0].p_hdr = eh;
 path[0].p_bh = ((void*)0);

 i = depth;

 while (i) {
  ext_debug("depth %d: num %d, max %d\n",
     ppos, le16_to_cpu(eh->eh_entries), le16_to_cpu(eh->eh_max));

  ext4_ext_binsearch_idx(inode, path + ppos, block);
  path[ppos].p_block = ext4_idx_pblock(path[ppos].p_idx);
  path[ppos].p_depth = i;
  path[ppos].p_ext = ((void*)0);

  bh = sb_getblk(inode->i_sb, path[ppos].p_block);
  if (unlikely(!bh))
   goto err;
  if (!bh_uptodate_or_lock(bh)) {
   if (bh_submit_read(bh) < 0) {
    put_bh(bh);
    goto err;
   }
  }
  eh = ext_block_hdr(bh);
  ppos++;
  if (unlikely(ppos > depth)) {
   put_bh(bh);
   EXT4_ERROR_INODE(inode,
      "ppos %d > depth %d", ppos, depth);
   goto err;
  }
  path[ppos].p_bh = bh;
  path[ppos].p_hdr = eh;
  i--;

  if (ext4_ext_check_block(inode, eh, i, bh))
   goto err;
 }

 path[ppos].p_depth = i;
 path[ppos].p_ext = ((void*)0);
 path[ppos].p_idx = ((void*)0);


 ext4_ext_binsearch(inode, path + ppos, block);

 if (path[ppos].p_ext)
  path[ppos].p_block = ext4_ext_pblock(path[ppos].p_ext);

 ext4_ext_show_path(inode, path);

 return path;

err:
 ext4_ext_drop_refs(path);
 if (alloc)
  kfree(path);
 return ERR_PTR(-EIO);
}
