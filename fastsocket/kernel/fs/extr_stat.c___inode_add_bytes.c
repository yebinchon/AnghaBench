
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_bytes; scalar_t__ i_blocks; } ;
typedef int loff_t ;



void __inode_add_bytes(struct inode *inode, loff_t bytes)
{
 inode->i_blocks += bytes >> 9;
 bytes &= 511;
 inode->i_bytes += bytes;
 if (inode->i_bytes >= 512) {
  inode->i_blocks++;
  inode->i_bytes -= 512;
 }
}
