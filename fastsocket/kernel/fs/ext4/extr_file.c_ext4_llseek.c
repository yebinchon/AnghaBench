
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_mutex; int i_size; TYPE_3__* i_sb; } ;
struct file {scalar_t__ f_pos; scalar_t__ f_version; TYPE_1__* f_mapping; } ;
typedef scalar_t__ loff_t ;
struct TYPE_6__ {scalar_t__ s_maxbytes; } ;
struct TYPE_5__ {scalar_t__ s_bitmap_maxbytes; } ;
struct TYPE_4__ {struct inode* host; } ;


 scalar_t__ EINVAL ;
 int EXT4_INODE_EXTENTS ;
 TYPE_2__* EXT4_SB (TYPE_3__*) ;


 int ext4_test_inode_flag (struct inode*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

loff_t ext4_llseek(struct file *file, loff_t offset, int origin)
{
 struct inode *inode = file->f_mapping->host;
 loff_t maxbytes;

 if (!(ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)))
  maxbytes = EXT4_SB(inode->i_sb)->s_bitmap_maxbytes;
 else
  maxbytes = inode->i_sb->s_maxbytes;
 mutex_lock(&inode->i_mutex);
 switch (origin) {
 case 128:
  offset += inode->i_size;
  break;
 case 129:
  if (offset == 0) {
   mutex_unlock(&inode->i_mutex);
   return file->f_pos;
  }
  offset += file->f_pos;
  break;
 }

 if (offset < 0 || offset > maxbytes) {
  mutex_unlock(&inode->i_mutex);
  return -EINVAL;
 }

 if (offset != file->f_pos) {
  file->f_pos = offset;
  file->f_version = 0;
 }
 mutex_unlock(&inode->i_mutex);

 return offset;
}
