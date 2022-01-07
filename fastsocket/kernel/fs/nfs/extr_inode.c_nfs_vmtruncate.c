
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; int i_size; } ;
typedef int loff_t ;


 int i_size_write (struct inode*,int ) ;
 int inode_newsize_ok (struct inode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int truncate_pagecache (struct inode*,int ,int ) ;

__attribute__((used)) static int nfs_vmtruncate(struct inode * inode, loff_t offset)
{
 loff_t oldsize;
 int err;

 err = inode_newsize_ok(inode, offset);
 if (err)
  goto out;

 spin_lock(&inode->i_lock);
 oldsize = inode->i_size;
 i_size_write(inode, offset);
 spin_unlock(&inode->i_lock);

 truncate_pagecache(inode, oldsize, offset);
out:
 return err;
}
