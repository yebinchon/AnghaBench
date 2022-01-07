
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct file {int f_pos; } ;
struct ext3_dir_entry_2 {scalar_t__ inode; int name_len; int name; } ;
struct dx_hash_info {scalar_t__ hash; scalar_t__ minor_hash; } ;
struct buffer_head {char* b_data; } ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {int s_blocksize; } ;


 int EXT3_BLOCK_SIZE_BITS (TYPE_1__*) ;
 char* EXT3_DIR_REC_LEN (int ) ;
 int brelse (struct buffer_head*) ;
 int dxtrace (int ) ;
 struct buffer_head* ext3_bread (int *,struct inode*,int,int ,int*) ;
 int ext3_check_dir_entry (char*,struct inode*,struct ext3_dir_entry_2*,struct buffer_head*,int) ;
 int ext3_htree_store_dirent (struct file*,scalar_t__,scalar_t__,struct ext3_dir_entry_2*) ;
 struct ext3_dir_entry_2* ext3_next_entry (struct ext3_dir_entry_2*) ;
 int ext3fs_dirhash (int ,int ,struct dx_hash_info*) ;
 int printk (char*,int) ;

__attribute__((used)) static int htree_dirblock_to_tree(struct file *dir_file,
      struct inode *dir, int block,
      struct dx_hash_info *hinfo,
      __u32 start_hash, __u32 start_minor_hash)
{
 struct buffer_head *bh;
 struct ext3_dir_entry_2 *de, *top;
 int err, count = 0;

 dxtrace(printk("In htree dirblock_to_tree: block %d\n", block));
 if (!(bh = ext3_bread (((void*)0), dir, block, 0, &err)))
  return err;

 de = (struct ext3_dir_entry_2 *) bh->b_data;
 top = (struct ext3_dir_entry_2 *) ((char *) de +
        dir->i_sb->s_blocksize -
        EXT3_DIR_REC_LEN(0));
 for (; de < top; de = ext3_next_entry(de)) {
  if (!ext3_check_dir_entry("htree_dirblock_to_tree", dir, de, bh,
     (block<<EXT3_BLOCK_SIZE_BITS(dir->i_sb))
      +((char *)de - bh->b_data))) {

   dir_file->f_pos = (dir_file->f_pos |
     (dir->i_sb->s_blocksize - 1)) + 1;
   brelse (bh);
   return count;
  }
  ext3fs_dirhash(de->name, de->name_len, hinfo);
  if ((hinfo->hash < start_hash) ||
      ((hinfo->hash == start_hash) &&
       (hinfo->minor_hash < start_minor_hash)))
   continue;
  if (de->inode == 0)
   continue;
  if ((err = ext3_htree_store_dirent(dir_file,
       hinfo->hash, hinfo->minor_hash, de)) != 0) {
   brelse(bh);
   return err;
  }
  count++;
 }
 brelse(bh);
 return count;
}
