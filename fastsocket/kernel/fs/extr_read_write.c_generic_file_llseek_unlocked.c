
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; int i_size; } ;
struct file {scalar_t__ f_pos; scalar_t__ f_version; TYPE_2__* f_mapping; } ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {struct inode* host; } ;
struct TYPE_3__ {scalar_t__ s_maxbytes; } ;


 scalar_t__ EINVAL ;



loff_t
generic_file_llseek_unlocked(struct file *file, loff_t offset, int origin)
{
 struct inode *inode = file->f_mapping->host;

 switch (origin) {
 case 128:
  offset += inode->i_size;
  break;
 case 129:






  if (offset == 0)
   return file->f_pos;
  offset += file->f_pos;
  break;
 }

 if (offset < 0 || offset > inode->i_sb->s_maxbytes)
  return -EINVAL;


 if (offset != file->f_pos) {
  file->f_pos = offset;
  file->f_version = 0;
 }

 return offset;
}
