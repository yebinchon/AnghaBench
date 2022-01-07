
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdos_dir_entry {int name; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ loff_t ;


 int ENOTEMPTY ;
 int MSDOS_DOT ;
 int MSDOS_DOTDOT ;
 int MSDOS_NAME ;
 int brelse (struct buffer_head*) ;
 scalar_t__ fat_get_short_entry (struct inode*,scalar_t__*,struct buffer_head**,struct msdos_dir_entry**) ;
 scalar_t__ strncmp (int ,int ,int ) ;

int fat_dir_empty(struct inode *dir)
{
 struct buffer_head *bh;
 struct msdos_dir_entry *de;
 loff_t cpos;
 int result = 0;

 bh = ((void*)0);
 cpos = 0;
 while (fat_get_short_entry(dir, &cpos, &bh, &de) >= 0) {
  if (strncmp(de->name, MSDOS_DOT , MSDOS_NAME) &&
      strncmp(de->name, MSDOS_DOTDOT, MSDOS_NAME)) {
   result = -ENOTEMPTY;
   break;
  }
 }
 brelse(bh);
 return result;
}
