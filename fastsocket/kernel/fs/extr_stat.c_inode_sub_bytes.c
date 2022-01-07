
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_bytes; int i_lock; scalar_t__ i_blocks; } ;
typedef int loff_t ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void inode_sub_bytes(struct inode *inode, loff_t bytes)
{
 spin_lock(&inode->i_lock);
 inode->i_blocks -= bytes >> 9;
 bytes &= 511;
 if (inode->i_bytes < bytes) {
  inode->i_blocks--;
  inode->i_bytes += 512;
 }
 inode->i_bytes -= bytes;
 spin_unlock(&inode->i_lock);
}
