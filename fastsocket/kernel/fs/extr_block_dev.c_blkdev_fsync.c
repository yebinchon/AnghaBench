
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mutex; } ;
struct file {TYPE_1__* f_mapping; } ;
struct dentry {int dummy; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int EOPNOTSUPP ;
 struct block_device* I_BDEV (struct inode*) ;
 int blkdev_issue_flush (struct block_device*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int blkdev_fsync(struct file *filp, struct dentry *dentry, int datasync)
{
 struct inode *bd_inode = filp->f_mapping->host;
 struct block_device *bdev = I_BDEV(bd_inode);
 int error;






 mutex_unlock(&bd_inode->i_mutex);

 error = blkdev_issue_flush(bdev, ((void*)0));
 if (error == -EOPNOTSUPP)
  error = 0;

 mutex_lock(&bd_inode->i_mutex);

 return error;
}
