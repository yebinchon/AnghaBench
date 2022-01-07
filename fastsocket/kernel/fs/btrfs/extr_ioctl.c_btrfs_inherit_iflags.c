
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {unsigned int flags; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 unsigned int BTRFS_INODE_COMPRESS ;
 unsigned int BTRFS_INODE_NOCOMPRESS ;
 unsigned int BTRFS_INODE_NODATACOW ;
 int btrfs_update_iflags (struct inode*) ;

void btrfs_inherit_iflags(struct inode *inode, struct inode *dir)
{
 unsigned int flags;

 if (!dir)
  return;

 flags = BTRFS_I(dir)->flags;

 if (flags & BTRFS_INODE_NOCOMPRESS) {
  BTRFS_I(inode)->flags &= ~BTRFS_INODE_COMPRESS;
  BTRFS_I(inode)->flags |= BTRFS_INODE_NOCOMPRESS;
 } else if (flags & BTRFS_INODE_COMPRESS) {
  BTRFS_I(inode)->flags &= ~BTRFS_INODE_NOCOMPRESS;
  BTRFS_I(inode)->flags |= BTRFS_INODE_COMPRESS;
 }

 if (flags & BTRFS_INODE_NODATACOW)
  BTRFS_I(inode)->flags |= BTRFS_INODE_NODATACOW;

 btrfs_update_iflags(inode);
}
