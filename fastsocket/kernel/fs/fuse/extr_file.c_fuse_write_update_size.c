
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;
struct fuse_inode {scalar_t__ attr_version; } ;
struct fuse_conn {int lock; scalar_t__ attr_version; } ;
typedef scalar_t__ loff_t ;


 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fuse_write_update_size(struct inode *inode, loff_t pos)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_inode *fi = get_fuse_inode(inode);

 spin_lock(&fc->lock);
 fi->attr_version = ++fc->attr_version;
 if (pos > inode->i_size)
  i_size_write(inode, pos);
 spin_unlock(&fc->lock);
}
