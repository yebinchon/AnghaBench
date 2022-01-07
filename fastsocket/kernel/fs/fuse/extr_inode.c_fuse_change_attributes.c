
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct inode {int i_mapping; int i_mode; int i_size; struct timespec i_mtime; } ;
struct fuse_inode {scalar_t__ attr_version; } ;
struct fuse_conn {scalar_t__ auto_inval_data; int lock; } ;
struct fuse_attr {int mtimensec; int mtime; int size; } ;
typedef int loff_t ;


 scalar_t__ S_ISREG (int ) ;
 int fuse_change_attributes_common (struct inode*,struct fuse_attr*,scalar_t__) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int invalidate_inode_pages2 (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timespec_equal (struct timespec*,struct timespec*) ;
 int truncate_pagecache (struct inode*,int ,int ) ;

void fuse_change_attributes(struct inode *inode, struct fuse_attr *attr,
       u64 attr_valid, u64 attr_version)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_inode *fi = get_fuse_inode(inode);
 loff_t oldsize;
 struct timespec old_mtime;

 spin_lock(&fc->lock);
 if (attr_version != 0 && fi->attr_version > attr_version) {
  spin_unlock(&fc->lock);
  return;
 }

 old_mtime = inode->i_mtime;
 fuse_change_attributes_common(inode, attr, attr_valid);

 oldsize = inode->i_size;
 i_size_write(inode, attr->size);
 spin_unlock(&fc->lock);

 if (S_ISREG(inode->i_mode)) {
  bool inval = 0;

  if (oldsize != attr->size) {
   truncate_pagecache(inode, oldsize, attr->size);
   inval = 1;
  } else if (fc->auto_inval_data) {
   struct timespec new_mtime = {
    .tv_sec = attr->mtime,
    .tv_nsec = attr->mtimensec,
   };





   if (!timespec_equal(&old_mtime, &new_mtime))
    inval = 1;
  }

  if (inval)
   invalidate_inode_pages2(inode->i_mapping);
 }
}
