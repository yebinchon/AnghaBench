
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_conn {int lock; int processing; int pending; scalar_t__ connected; } ;
struct file {int dummy; } ;


 int end_requests (struct fuse_conn*,int *) ;
 int fuse_conn_put (struct fuse_conn*) ;
 struct fuse_conn* fuse_get_conn (struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int fuse_dev_release(struct inode *inode, struct file *file)
{
 struct fuse_conn *fc = fuse_get_conn(file);
 if (fc) {
  spin_lock(&fc->lock);
  fc->connected = 0;
  end_requests(fc, &fc->pending);
  end_requests(fc, &fc->processing);
  spin_unlock(&fc->lock);
  fuse_conn_put(fc);
 }

 return 0;
}
