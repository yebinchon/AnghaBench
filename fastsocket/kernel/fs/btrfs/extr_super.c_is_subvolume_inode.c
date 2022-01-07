
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_ino; } ;


 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ;

__attribute__((used)) static inline int is_subvolume_inode(struct inode *inode)
{
 if (inode && inode->i_ino == BTRFS_FIRST_FREE_OBJECTID)
  return 1;
 return 0;
}
