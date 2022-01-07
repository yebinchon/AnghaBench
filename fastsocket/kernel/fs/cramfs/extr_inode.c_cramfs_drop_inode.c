
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;


 int generic_delete_inode (struct inode*) ;
 int generic_drop_inode (struct inode*) ;

__attribute__((used)) static void cramfs_drop_inode(struct inode *inode)
{
 if (inode->i_ino == 1)
  generic_delete_inode(inode);
 else
  generic_drop_inode(inode);
}
