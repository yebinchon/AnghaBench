
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; int i_lock; int i_size; } ;
typedef int loff_t ;
struct TYPE_2__ {int (* truncate ) (struct inode*) ;} ;


 int i_size_write (struct inode*,int ) ;
 int inode_newsize_ok (struct inode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct inode*) ;
 int truncate_pagecache (struct inode*,int ,int ) ;

__attribute__((used)) static int cifs_vmtruncate(struct inode *inode, loff_t offset)
{
 loff_t oldsize;
 int err;

 spin_lock(&inode->i_lock);
 err = inode_newsize_ok(inode, offset);
 if (err) {
  spin_unlock(&inode->i_lock);
  goto out;
 }

 oldsize = inode->i_size;
 i_size_write(inode, offset);
 spin_unlock(&inode->i_lock);
 truncate_pagecache(inode, oldsize, offset);
 if (inode->i_op->truncate)
  inode->i_op->truncate(inode);
out:
 return err;
}
