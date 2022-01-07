
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_version; } ;
struct ext3_dir_entry_2 {int rec_len; scalar_t__ inode; } ;
struct buffer_head {int b_size; scalar_t__ b_data; } ;
typedef int handle_t ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EIO ;
 int ENOENT ;
 int ext3_check_dir_entry (char*,struct inode*,struct ext3_dir_entry_2*,struct buffer_head*,int) ;
 int ext3_journal_dirty_metadata (int *,struct buffer_head*) ;
 int ext3_journal_get_write_access (int *,struct buffer_head*) ;
 struct ext3_dir_entry_2* ext3_next_entry (struct ext3_dir_entry_2*) ;
 scalar_t__ ext3_rec_len_from_disk (int ) ;
 int ext3_rec_len_to_disk (scalar_t__) ;

__attribute__((used)) static int ext3_delete_entry (handle_t *handle,
         struct inode * dir,
         struct ext3_dir_entry_2 * de_del,
         struct buffer_head * bh)
{
 struct ext3_dir_entry_2 * de, * pde;
 int i;

 i = 0;
 pde = ((void*)0);
 de = (struct ext3_dir_entry_2 *) bh->b_data;
 while (i < bh->b_size) {
  if (!ext3_check_dir_entry("ext3_delete_entry", dir, de, bh, i))
   return -EIO;
  if (de == de_del) {
   BUFFER_TRACE(bh, "get_write_access");
   ext3_journal_get_write_access(handle, bh);
   if (pde)
    pde->rec_len = ext3_rec_len_to_disk(
     ext3_rec_len_from_disk(pde->rec_len) +
     ext3_rec_len_from_disk(de->rec_len));
   else
    de->inode = 0;
   dir->i_version++;
   BUFFER_TRACE(bh, "call ext3_journal_dirty_metadata");
   ext3_journal_dirty_metadata(handle, bh);
   return 0;
  }
  i += ext3_rec_len_from_disk(de->rec_len);
  pde = de;
  de = ext3_next_entry(de);
 }
 return -ENOENT;
}
