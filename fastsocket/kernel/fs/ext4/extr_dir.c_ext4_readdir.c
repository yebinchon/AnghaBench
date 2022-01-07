
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct super_block {int s_blocksize; TYPE_4__* s_bdev; } ;
struct inode {int i_size; int i_blkbits; int i_blocks; scalar_t__ i_version; int i_ino; struct super_block* i_sb; } ;
struct TYPE_11__ {int prev_pos; } ;
struct TYPE_8__ {TYPE_1__* dentry; } ;
struct file {int f_pos; scalar_t__ f_version; TYPE_5__ f_ra; TYPE_2__ f_path; } ;
struct ext4_dir_entry_2 {int rec_len; int file_type; int inode; int name_len; int name; } ;
struct buffer_head {int b_blocknr; scalar_t__ b_data; scalar_t__ b_state; } ;
typedef int pgoff_t ;
typedef int loff_t ;
typedef int (* filldir_t ) (void*,int ,int ,int,scalar_t__,int ) ;
typedef int ext4_lblk_t ;
struct TYPE_10__ {TYPE_3__* bd_inode; } ;
struct TYPE_9__ {int i_mapping; } ;
struct TYPE_7__ {struct inode* d_inode; } ;


 int ERR_BAD_DX_DIR ;
 int EXT4_BLOCK_SIZE_BITS (struct super_block*) ;
 scalar_t__ EXT4_DIR_REC_LEN (int) ;
 int EXT4_INODE_INDEX ;
 int PAGE_CACHE_SHIFT ;
 int brelse (struct buffer_head*) ;
 struct buffer_head* ext4_bread (int *,struct inode*,int,int ,int*) ;
 int ext4_check_dir_entry (char*,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*,unsigned int) ;
 int ext4_clear_inode_flag (struct inode*,int ) ;
 int ext4_dx_readdir (struct file*,void*,int (*) (void*,int ,int ,int,scalar_t__,int )) ;
 int ext4_error (struct super_block*,char*,int ,unsigned long long) ;
 int ext4_get_blocks (int *,struct inode*,int,int,struct buffer_head*,int ) ;
 scalar_t__ ext4_rec_len_from_disk (int ,int) ;
 int get_dtype (struct super_block*,int ) ;
 scalar_t__ is_dx_dir (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int page_cache_sync_readahead (int ,TYPE_5__*,struct file*,int,int) ;
 int ra_has_index (TYPE_5__*,int) ;

__attribute__((used)) static int ext4_readdir(struct file *filp,
    void *dirent, filldir_t filldir)
{
 int error = 0;
 unsigned int offset;
 int i, stored;
 struct ext4_dir_entry_2 *de;
 int err;
 struct inode *inode = filp->f_path.dentry->d_inode;
 struct super_block *sb = inode->i_sb;
 int ret = 0;
 int dir_has_error = 0;

 if (is_dx_dir(inode)) {
  err = ext4_dx_readdir(filp, dirent, filldir);
  if (err != ERR_BAD_DX_DIR) {
   ret = err;
   goto out;
  }




  ext4_clear_inode_flag(filp->f_path.dentry->d_inode,
          EXT4_INODE_INDEX);
 }
 stored = 0;
 offset = filp->f_pos & (sb->s_blocksize - 1);

 while (!error && !stored && filp->f_pos < inode->i_size) {
  ext4_lblk_t blk = filp->f_pos >> EXT4_BLOCK_SIZE_BITS(sb);
  struct buffer_head map_bh;
  struct buffer_head *bh = ((void*)0);

  map_bh.b_state = 0;
  err = ext4_get_blocks(((void*)0), inode, blk, 1, &map_bh, 0);
  if (err > 0) {
   pgoff_t index = map_bh.b_blocknr >>
     (PAGE_CACHE_SHIFT - inode->i_blkbits);
   if (!ra_has_index(&filp->f_ra, index))
    page_cache_sync_readahead(
     sb->s_bdev->bd_inode->i_mapping,
     &filp->f_ra, filp,
     index, 1);
   filp->f_ra.prev_pos = (loff_t)index << PAGE_CACHE_SHIFT;
   bh = ext4_bread(((void*)0), inode, blk, 0, &err);
  }





  if (!bh) {
   if (!dir_has_error) {
    ext4_error(sb, "directory #%lu "
        "contains a hole at offset %Lu",
        inode->i_ino,
        (unsigned long long) filp->f_pos);
    dir_has_error = 1;
   }

   if (filp->f_pos > inode->i_blocks << 9)
    break;
   filp->f_pos += sb->s_blocksize - offset;
   continue;
  }

revalidate:




  if (filp->f_version != inode->i_version) {
   for (i = 0; i < sb->s_blocksize && i < offset; ) {
    de = (struct ext4_dir_entry_2 *)
     (bh->b_data + i);






    if (ext4_rec_len_from_disk(de->rec_len,
     sb->s_blocksize) < EXT4_DIR_REC_LEN(1))
     break;
    i += ext4_rec_len_from_disk(de->rec_len,
           sb->s_blocksize);
   }
   offset = i;
   filp->f_pos = (filp->f_pos & ~(sb->s_blocksize - 1))
    | offset;
   filp->f_version = inode->i_version;
  }

  while (!error && filp->f_pos < inode->i_size
         && offset < sb->s_blocksize) {
   de = (struct ext4_dir_entry_2 *) (bh->b_data + offset);
   if (!ext4_check_dir_entry("ext4_readdir", inode, de,
        bh, offset)) {



    filp->f_pos = (filp->f_pos |
      (sb->s_blocksize - 1)) + 1;
    brelse(bh);
    ret = stored;
    goto out;
   }
   offset += ext4_rec_len_from_disk(de->rec_len,
     sb->s_blocksize);
   if (le32_to_cpu(de->inode)) {







    u64 version = filp->f_version;

    error = filldir(dirent, de->name,
      de->name_len,
      filp->f_pos,
      le32_to_cpu(de->inode),
      get_dtype(sb, de->file_type));
    if (error)
     break;
    if (version != filp->f_version)
     goto revalidate;
    stored++;
   }
   filp->f_pos += ext4_rec_len_from_disk(de->rec_len,
      sb->s_blocksize);
  }
  offset = 0;
  brelse(bh);
 }
out:
 return ret;
}
