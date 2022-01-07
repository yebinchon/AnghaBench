
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_blocks; int i_bytes; } ;
typedef int loff_t ;



void inode_set_bytes(struct inode *inode, loff_t bytes)
{


 inode->i_blocks = bytes >> 9;
 inode->i_bytes = bytes & 511;
}
