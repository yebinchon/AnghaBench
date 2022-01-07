
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode {scalar_t__ i_size; } ;
struct fuse_inode {scalar_t__ attr_version; } ;
struct fuse_conn {scalar_t__ attr_version; int lock; } ;
typedef scalar_t__ loff_t ;


 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fuse_read_update_size(struct inode *inode, loff_t size,
      u64 attr_ver)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_inode *fi = get_fuse_inode(inode);

 spin_lock(&fc->lock);
 if (attr_ver == fi->attr_version && size < inode->i_size) {
  fi->attr_version = ++fc->attr_version;
  i_size_write(inode, size);
 }
 spin_unlock(&fc->lock);
}
