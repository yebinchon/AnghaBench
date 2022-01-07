
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_bytes; int i_lock; scalar_t__ i_blocks; } ;
typedef int loff_t ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

loff_t inode_get_bytes(struct inode *inode)
{
 loff_t ret;

 spin_lock(&inode->i_lock);
 ret = (((loff_t)inode->i_blocks) << 9) + inode->i_bytes;
 spin_unlock(&inode->i_lock);
 return ret;
}
