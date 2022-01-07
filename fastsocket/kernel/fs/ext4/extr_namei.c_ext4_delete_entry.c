
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_version; TYPE_1__* i_sb; } ;
struct ext4_dir_entry_2 {int rec_len; scalar_t__ inode; } ;
struct buffer_head {int b_size; scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {unsigned int s_blocksize; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EIO ;
 int ENOENT ;
 int ext4_check_dir_entry (char*,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*,int) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 struct ext4_dir_entry_2* ext4_next_entry (struct ext4_dir_entry_2*,unsigned int) ;
 scalar_t__ ext4_rec_len_from_disk (int ,unsigned int) ;
 int ext4_rec_len_to_disk (scalar_t__,unsigned int) ;

__attribute__((used)) static int ext4_delete_entry(handle_t *handle,
        struct inode *dir,
        struct ext4_dir_entry_2 *de_del,
        struct buffer_head *bh)
{
 struct ext4_dir_entry_2 *de, *pde;
 unsigned int blocksize = dir->i_sb->s_blocksize;
 int i;

 i = 0;
 pde = ((void*)0);
 de = (struct ext4_dir_entry_2 *) bh->b_data;
 while (i < bh->b_size) {
  if (!ext4_check_dir_entry("ext4_delete_entry", dir, de, bh, i))
   return -EIO;
  if (de == de_del) {
   BUFFER_TRACE(bh, "get_write_access");
   ext4_journal_get_write_access(handle, bh);
   if (pde)
    pde->rec_len = ext4_rec_len_to_disk(
     ext4_rec_len_from_disk(pde->rec_len,
              blocksize) +
     ext4_rec_len_from_disk(de->rec_len,
              blocksize),
     blocksize);
   else
    de->inode = 0;
   dir->i_version++;
   BUFFER_TRACE(bh, "call ext4_handle_dirty_metadata");
   ext4_handle_dirty_metadata(handle, dir, bh);
   return 0;
  }
  i += ext4_rec_len_from_disk(de->rec_len, blocksize);
  pde = de;
  de = ext4_next_entry(de, blocksize);
 }
 return -ENOENT;
}
