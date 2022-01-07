
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mutex; } ;
struct file {scalar_t__ f_pos; TYPE_1__* f_mapping; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 scalar_t__ EINVAL ;
 scalar_t__ i_size_read (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static loff_t block_llseek(struct file *file, loff_t offset, int origin)
{
 struct inode *bd_inode = file->f_mapping->host;
 loff_t size;
 loff_t retval;

 mutex_lock(&bd_inode->i_mutex);
 size = i_size_read(bd_inode);

 switch (origin) {
  case 2:
   offset += size;
   break;
  case 1:
   offset += file->f_pos;
 }
 retval = -EINVAL;
 if (offset >= 0 && offset <= size) {
  if (offset != file->f_pos) {
   file->f_pos = offset;
  }
  retval = offset;
 }
 mutex_unlock(&bd_inode->i_mutex);
 return retval;
}
