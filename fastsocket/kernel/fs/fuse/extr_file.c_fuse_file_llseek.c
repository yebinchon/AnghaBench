
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_mutex; TYPE_1__* i_sb; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {int f_pos; scalar_t__ f_version; TYPE_3__ f_path; } ;
typedef int loff_t ;
struct TYPE_5__ {struct inode* d_inode; } ;
struct TYPE_4__ {int s_maxbytes; } ;


 int EINVAL ;


 int fuse_update_attributes (struct inode*,int *,struct file*,int *) ;
 int i_size_read (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static loff_t fuse_file_llseek(struct file *file, loff_t offset, int origin)
{
 loff_t retval;
 struct inode *inode = file->f_path.dentry->d_inode;

 mutex_lock(&inode->i_mutex);
 switch (origin) {
 case 128:
  retval = fuse_update_attributes(inode, ((void*)0), file, ((void*)0));
  if (retval)
   goto exit;
  offset += i_size_read(inode);
  break;
 case 129:
  offset += file->f_pos;
 }
 retval = -EINVAL;
 if (offset >= 0 && offset <= inode->i_sb->s_maxbytes) {
  if (offset != file->f_pos) {
   file->f_pos = offset;
   file->f_version = 0;
  }
  retval = offset;
 }
exit:
 mutex_unlock(&inode->i_mutex);
 return retval;
}
