
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_mutex; TYPE_2__* i_sb; int i_size; } ;
struct file {scalar_t__ f_pos; scalar_t__ f_version; TYPE_1__* f_mapping; } ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {scalar_t__ s_maxbytes; } ;
struct TYPE_3__ {struct inode* host; } ;


 scalar_t__ EINVAL ;


 scalar_t__ ext4_get_htree_eof (struct file*) ;
 int is_dx_dir (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

loff_t ext4_dir_llseek(struct file *file, loff_t offset, int origin)
{
 struct inode *inode = file->f_mapping->host;
 loff_t ret = -EINVAL;
 int dx_dir = is_dx_dir(inode);

 mutex_lock(&inode->i_mutex);





 switch (origin) {
 case 128:
  if (unlikely(offset > 0))
   goto out_err;



  if (dx_dir)
   offset += ext4_get_htree_eof(file);
  else
   offset += inode->i_size;
  break;
 case 129:






  if (offset == 0) {
   offset = file->f_pos;
   goto out_ok;
  }

  offset += file->f_pos;
  break;
 }

 if (unlikely(offset < 0))
  goto out_err;

 if (!dx_dir) {
  if (offset > inode->i_sb->s_maxbytes)
   goto out_err;
 } else if (offset > ext4_get_htree_eof(file))
  goto out_err;


 if (offset != file->f_pos) {
  file->f_pos = offset;
  file->f_version = 0;
 }

out_ok:
 ret = offset;
out_err:
 mutex_unlock(&inode->i_mutex);

 return ret;
}
