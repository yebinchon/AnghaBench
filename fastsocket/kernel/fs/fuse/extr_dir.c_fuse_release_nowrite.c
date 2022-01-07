
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_conn {int lock; } ;


 int __fuse_release_nowrite (struct inode*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fuse_release_nowrite(struct inode *inode)
{
 struct fuse_conn *fc = get_fuse_conn(inode);

 spin_lock(&fc->lock);
 __fuse_release_nowrite(inode);
 spin_unlock(&fc->lock);
}
