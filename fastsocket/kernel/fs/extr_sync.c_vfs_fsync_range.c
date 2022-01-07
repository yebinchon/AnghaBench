
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file_operations {int (* fsync ) (struct file*,struct dentry*,int) ;} ;
struct file {struct file_operations* f_op; struct address_space* f_mapping; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct address_space {TYPE_2__* host; } ;
typedef int loff_t ;
struct TYPE_4__ {int i_mutex; } ;
struct TYPE_3__ {struct file_operations* i_fop; struct address_space* i_mapping; } ;


 int EINVAL ;
 int EIO ;
 int filemap_write_and_wait_range (struct address_space*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct file*,struct dentry*,int) ;

int vfs_fsync_range(struct file *file, struct dentry *dentry, loff_t start,
      loff_t end, int datasync)
{
 const struct file_operations *fop;
 struct address_space *mapping;
 int err, ret;






 if (file) {
  mapping = file->f_mapping;
  fop = file->f_op;
 } else {
  mapping = dentry->d_inode->i_mapping;
  fop = dentry->d_inode->i_fop;
 }

 if (!fop || !fop->fsync) {
  ret = -EINVAL;
  goto out;
 }

 ret = filemap_write_and_wait_range(mapping, start, end);





 mutex_lock(&mapping->host->i_mutex);
 err = fop->fsync(file, dentry, datasync);
 if (!ret || (err && ret == -EIO))
  ret = err;
 mutex_unlock(&mapping->host->i_mutex);

out:
 return ret;
}
