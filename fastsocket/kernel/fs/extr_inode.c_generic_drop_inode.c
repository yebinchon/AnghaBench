
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; } ;


 int generic_delete_inode (struct inode*) ;
 int generic_forget_inode (struct inode*) ;

void generic_drop_inode(struct inode *inode)
{
 if (!inode->i_nlink)
  generic_delete_inode(inode);
 else
  generic_forget_inode(inode);
}
