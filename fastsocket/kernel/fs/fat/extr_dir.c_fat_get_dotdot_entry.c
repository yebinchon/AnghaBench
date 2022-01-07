
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdos_dir_entry {int name; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ loff_t ;


 int ENOENT ;
 int MSDOS_DOTDOT ;
 int MSDOS_NAME ;
 scalar_t__ fat_get_short_entry (struct inode*,scalar_t__*,struct buffer_head**,struct msdos_dir_entry**) ;
 scalar_t__ fat_make_i_pos (int ,struct buffer_head*,struct msdos_dir_entry*) ;
 int strncmp (int ,int ,int ) ;

int fat_get_dotdot_entry(struct inode *dir, struct buffer_head **bh,
    struct msdos_dir_entry **de, loff_t *i_pos)
{
 loff_t offset;

 offset = 0;
 *bh = ((void*)0);
 while (fat_get_short_entry(dir, &offset, bh, de) >= 0) {
  if (!strncmp((*de)->name, MSDOS_DOTDOT, MSDOS_NAME)) {
   *i_pos = fat_make_i_pos(dir->i_sb, *bh, *de);
   return 0;
  }
 }
 return -ENOENT;
}
