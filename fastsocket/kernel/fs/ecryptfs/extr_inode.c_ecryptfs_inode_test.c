
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 struct inode* ecryptfs_inode_to_lower (struct inode*) ;

int ecryptfs_inode_test(struct inode *inode, void *candidate_lower_inode)
{
 if ((ecryptfs_inode_to_lower(inode)
      == (struct inode *)candidate_lower_inode))
  return 1;
 else
  return 0;
}
