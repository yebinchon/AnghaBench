
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_blocksize; } ;
struct msdos_dir_entry {int * name; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int loff_t ;


 int DELETED_FLAG ;
 int EIO ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ fat_get_entry (struct inode*,int*,struct buffer_head**,struct msdos_dir_entry**) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int sync_dirty_buffer (struct buffer_head*) ;

__attribute__((used)) static int __fat_remove_entries(struct inode *dir, loff_t pos, int nr_slots)
{
 struct super_block *sb = dir->i_sb;
 struct buffer_head *bh;
 struct msdos_dir_entry *de, *endp;
 int err = 0, orig_slots;

 while (nr_slots) {
  bh = ((void*)0);
  if (fat_get_entry(dir, &pos, &bh, &de) < 0) {
   err = -EIO;
   break;
  }

  orig_slots = nr_slots;
  endp = (struct msdos_dir_entry *)(bh->b_data + sb->s_blocksize);
  while (nr_slots && de < endp) {
   de->name[0] = DELETED_FLAG;
   de++;
   nr_slots--;
  }
  mark_buffer_dirty_inode(bh, dir);
  if (IS_DIRSYNC(dir))
   err = sync_dirty_buffer(bh);
  brelse(bh);
  if (err)
   break;


  pos += ((orig_slots - nr_slots) * sizeof(*de)) - sizeof(*de);
 }

 return err;
}
