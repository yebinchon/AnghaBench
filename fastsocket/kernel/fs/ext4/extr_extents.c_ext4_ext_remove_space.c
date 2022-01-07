
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {int p_depth; TYPE_1__* p_hdr; struct buffer_head* p_bh; void* p_block; scalar_t__ p_idx; struct ext4_extent* p_ext; } ;
struct buffer_head {int dummy; } ;
typedef struct ext4_ext_path handle_t ;
typedef int ext4_lblk_t ;
struct TYPE_7__ {scalar_t__ eh_entries; int eh_max; scalar_t__ eh_depth; } ;


 int EAGAIN ;
 int EIO ;
 int ENOMEM ;
 int EXT4_ERROR_INODE (struct inode*,char*,int) ;
 int EXT4_EXT_MARK_UNINIT1 ;
 int EXT4_EXT_MARK_UNINIT2 ;
 int EXT4_GET_BLOCKS_DIO ;
 int EXT4_GET_BLOCKS_METADATA_NOFAIL ;
 int EXT_FIRST_INDEX (TYPE_1__*) ;
 scalar_t__ EXT_LAST_INDEX (TYPE_1__*) ;
 int EXT_MAX_BLOCKS ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 int PTR_ERR (struct ext4_ext_path*) ;
 scalar_t__ WARN_ON (int) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le16 (int ) ;
 scalar_t__ ext4_ext_check (struct inode*,TYPE_1__*,int) ;
 scalar_t__ ext4_ext_check_block (struct inode*,TYPE_1__*,int,struct buffer_head*) ;
 int ext4_ext_dirty (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 struct ext4_ext_path* ext4_ext_find_extent (struct inode*,int,int *) ;
 int ext4_ext_get_access (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_invalidate_cache (struct inode*) ;
 scalar_t__ ext4_ext_is_uninitialized (struct ext4_extent*) ;
 scalar_t__ ext4_ext_more_to_rm (struct ext4_ext_path*) ;
 int ext4_ext_rm_idx (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_rm_leaf (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*,int,int) ;
 int ext4_ext_space_root (struct inode*,int ) ;
 int ext4_idx_pblock (scalar_t__) ;
 struct ext4_ext_path* ext4_journal_start (struct inode*,int) ;
 int ext4_journal_stop (struct ext4_ext_path*) ;
 int ext4_split_extent_at (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*,int,int,int) ;
 TYPE_1__* ext_block_hdr (struct buffer_head*) ;
 int ext_debug (char*,...) ;
 int ext_depth (struct inode*) ;
 TYPE_1__* ext_inode_hdr (struct inode*) ;
 int kfree (struct ext4_ext_path*) ;
 struct ext4_ext_path* kzalloc (int,int ) ;
 void* le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (int ) ;
 int memset (struct ext4_ext_path*,int ,int) ;
 struct buffer_head* sb_bread (struct super_block*,int ) ;

__attribute__((used)) static int ext4_ext_remove_space(struct inode *inode, ext4_lblk_t start,
    ext4_lblk_t end)
{
 struct super_block *sb = inode->i_sb;
 int depth = ext_depth(inode);
 struct ext4_ext_path *path = ((void*)0);
 handle_t *handle;
 int i = 0, err = 0;

 ext_debug("truncate since %u to %u\n", start, end);


 handle = ext4_journal_start(inode, depth + 1);
 if (IS_ERR(handle))
  return PTR_ERR(handle);

again:
 ext4_ext_invalidate_cache(inode);
 if (end < EXT_MAX_BLOCKS - 1) {
  struct ext4_extent *ex;
  ext4_lblk_t ee_block;


  path = ext4_ext_find_extent(inode, end, ((void*)0));
  if (IS_ERR(path)) {
   ext4_journal_stop(handle);
   return PTR_ERR(path);
  }
  depth = ext_depth(inode);

  ex = path[depth].p_ext;
  if (!ex) {
   if (depth) {
    EXT4_ERROR_INODE(inode,
       "path[%d].p_hdr == NULL",
       depth);
    err = -EIO;
   }
   goto out;
  }

  ee_block = le32_to_cpu(ex->ee_block);







  if (end >= ee_block &&
      end < ee_block + ext4_ext_get_actual_len(ex) - 1) {
   int split_flag = 0;

   if (ext4_ext_is_uninitialized(ex))
    split_flag = EXT4_EXT_MARK_UNINIT1 |
          EXT4_EXT_MARK_UNINIT2;







   err = ext4_split_extent_at(handle, inode, path,
     end + 1, split_flag,
     EXT4_GET_BLOCKS_DIO |
     EXT4_GET_BLOCKS_METADATA_NOFAIL);

   if (err < 0)
    goto out;
  }
 }




 depth = ext_depth(inode);
 if (path) {
  int k = i = depth;
  while (--k > 0)
   path[k].p_block =
    le16_to_cpu(path[k].p_hdr->eh_entries)+1;
 } else {
  path = kzalloc(sizeof(struct ext4_ext_path) * (depth + 1),
          GFP_NOFS);
  if (path == ((void*)0)) {
   ext4_journal_stop(handle);
   return -ENOMEM;
  }
  path[0].p_depth = depth;
  path[0].p_hdr = ext_inode_hdr(inode);
  i = 0;

  if (ext4_ext_check(inode, path[0].p_hdr, depth)) {
   err = -EIO;
   goto out;
  }
 }
 err = 0;

 while (i >= 0 && err == 0) {
  if (i == depth) {

   err = ext4_ext_rm_leaf(handle, inode, path,
     start, end);

   brelse(path[i].p_bh);
   path[i].p_bh = ((void*)0);
   i--;
   continue;
  }


  if (!path[i].p_hdr) {
   ext_debug("initialize header\n");
   path[i].p_hdr = ext_block_hdr(path[i].p_bh);
  }

  if (!path[i].p_idx) {

   path[i].p_idx = EXT_LAST_INDEX(path[i].p_hdr);
   path[i].p_block = le16_to_cpu(path[i].p_hdr->eh_entries)+1;
   ext_debug("init index ptr: hdr 0x%p, num %d\n",
      path[i].p_hdr,
      le16_to_cpu(path[i].p_hdr->eh_entries));
  } else {

   path[i].p_idx--;
  }

  ext_debug("level %d - index, first 0x%p, cur 0x%p\n",
    i, EXT_FIRST_INDEX(path[i].p_hdr),
    path[i].p_idx);
  if (ext4_ext_more_to_rm(path + i)) {
   struct buffer_head *bh;

   ext_debug("move to level %d (block %llu)\n",
      i + 1, ext4_idx_pblock(path[i].p_idx));
   memset(path + i + 1, 0, sizeof(*path));
   bh = sb_bread(sb, ext4_idx_pblock(path[i].p_idx));
   if (!bh) {

    err = -EIO;
    break;
   }
   if (WARN_ON(i + 1 > depth)) {
    err = -EIO;
    break;
   }
   if (ext4_ext_check_block(inode, ext_block_hdr(bh),
       depth - i - 1, bh)) {
    err = -EIO;
    break;
   }
   path[i + 1].p_bh = bh;



   path[i].p_block = le16_to_cpu(path[i].p_hdr->eh_entries);
   i++;
  } else {

   if (path[i].p_hdr->eh_entries == 0 && i > 0) {



    err = ext4_ext_rm_idx(handle, inode, path + i);
   }

   brelse(path[i].p_bh);
   path[i].p_bh = ((void*)0);
   i--;
   ext_debug("return to level %d\n", i);
  }
 }


 if (path->p_hdr->eh_entries == 0) {




  err = ext4_ext_get_access(handle, inode, path);
  if (err == 0) {
   ext_inode_hdr(inode)->eh_depth = 0;
   ext_inode_hdr(inode)->eh_max =
    cpu_to_le16(ext4_ext_space_root(inode, 0));
   err = ext4_ext_dirty(handle, inode, path);
  }
 }
out:
 ext4_ext_drop_refs(path);
 kfree(path);
 if (err == -EAGAIN) {
  path = ((void*)0);
  goto again;
 }
 ext4_journal_stop(handle);

 return err;
}
