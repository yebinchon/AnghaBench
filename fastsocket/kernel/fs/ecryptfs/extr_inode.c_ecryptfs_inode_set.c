
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ecryptfs_init_inode (struct inode*,struct inode*) ;

int ecryptfs_inode_set(struct inode *inode, void *lower_inode)
{
 ecryptfs_init_inode(inode, (struct inode *)lower_inode);
 return 0;
}
