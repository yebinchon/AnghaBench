
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_flags; } ;
struct btrfs_inode {int flags; } ;


 struct btrfs_inode* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_APPEND ;
 int BTRFS_INODE_DIRSYNC ;
 int BTRFS_INODE_IMMUTABLE ;
 int BTRFS_INODE_NOATIME ;
 int BTRFS_INODE_SYNC ;
 int S_APPEND ;
 int S_DIRSYNC ;
 int S_IMMUTABLE ;
 int S_NOATIME ;
 int S_SYNC ;

void btrfs_update_iflags(struct inode *inode)
{
 struct btrfs_inode *ip = BTRFS_I(inode);

 inode->i_flags &= ~(S_SYNC|S_APPEND|S_IMMUTABLE|S_NOATIME|S_DIRSYNC);

 if (ip->flags & BTRFS_INODE_SYNC)
  inode->i_flags |= S_SYNC;
 if (ip->flags & BTRFS_INODE_IMMUTABLE)
  inode->i_flags |= S_IMMUTABLE;
 if (ip->flags & BTRFS_INODE_APPEND)
  inode->i_flags |= S_APPEND;
 if (ip->flags & BTRFS_INODE_NOATIME)
  inode->i_flags |= S_NOATIME;
 if (ip->flags & BTRFS_INODE_DIRSYNC)
  inode->i_flags |= S_DIRSYNC;
}
