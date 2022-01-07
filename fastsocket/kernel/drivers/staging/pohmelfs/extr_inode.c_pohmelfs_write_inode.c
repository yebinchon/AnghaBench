
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_inode {int dummy; } ;
struct inode {int dummy; } ;


 struct pohmelfs_inode* POHMELFS_I (struct inode*) ;
 int pohmelfs_write_create_inode (struct pohmelfs_inode*) ;
 int pohmelfs_write_inode_create_children (struct inode*) ;

__attribute__((used)) static int pohmelfs_write_inode(struct inode *inode, int sync)
{
 struct pohmelfs_inode *pi = POHMELFS_I(inode);

 pohmelfs_write_create_inode(pi);
 pohmelfs_write_inode_create_children(inode);

 return 0;
}
