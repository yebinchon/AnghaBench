
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_flags; } ;
struct TYPE_2__ {unsigned int mode2; } ;


 unsigned int JFS_APPEND_FL ;
 unsigned int JFS_DIRSYNC_FL ;
 unsigned int JFS_IMMUTABLE_FL ;
 TYPE_1__* JFS_IP (struct inode*) ;
 unsigned int JFS_NOATIME_FL ;
 unsigned int JFS_SYNC_FL ;
 int S_APPEND ;
 int S_DIRSYNC ;
 int S_IMMUTABLE ;
 int S_NOATIME ;
 int S_SYNC ;

void jfs_set_inode_flags(struct inode *inode)
{
 unsigned int flags = JFS_IP(inode)->mode2;

 inode->i_flags &= ~(S_IMMUTABLE | S_APPEND |
  S_NOATIME | S_DIRSYNC | S_SYNC);

 if (flags & JFS_IMMUTABLE_FL)
  inode->i_flags |= S_IMMUTABLE;
 if (flags & JFS_APPEND_FL)
  inode->i_flags |= S_APPEND;
 if (flags & JFS_NOATIME_FL)
  inode->i_flags |= S_NOATIME;
 if (flags & JFS_DIRSYNC_FL)
  inode->i_flags |= S_DIRSYNC;
 if (flags & JFS_SYNC_FL)
  inode->i_flags |= S_SYNC;
}
