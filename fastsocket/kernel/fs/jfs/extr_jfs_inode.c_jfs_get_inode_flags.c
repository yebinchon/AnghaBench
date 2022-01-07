
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int i_flags; } ;
struct jfs_inode_info {int mode2; TYPE_1__ vfs_inode; } ;


 int JFS_APPEND_FL ;
 int JFS_DIRSYNC_FL ;
 int JFS_IMMUTABLE_FL ;
 int JFS_NOATIME_FL ;
 int JFS_SYNC_FL ;
 unsigned int S_APPEND ;
 unsigned int S_DIRSYNC ;
 unsigned int S_IMMUTABLE ;
 unsigned int S_NOATIME ;
 unsigned int S_SYNC ;

void jfs_get_inode_flags(struct jfs_inode_info *jfs_ip)
{
 unsigned int flags = jfs_ip->vfs_inode.i_flags;

 jfs_ip->mode2 &= ~(JFS_IMMUTABLE_FL | JFS_APPEND_FL | JFS_NOATIME_FL |
      JFS_DIRSYNC_FL | JFS_SYNC_FL);
 if (flags & S_IMMUTABLE)
  jfs_ip->mode2 |= JFS_IMMUTABLE_FL;
 if (flags & S_APPEND)
  jfs_ip->mode2 |= JFS_APPEND_FL;
 if (flags & S_NOATIME)
  jfs_ip->mode2 |= JFS_NOATIME_FL;
 if (flags & S_DIRSYNC)
  jfs_ip->mode2 |= JFS_DIRSYNC_FL;
 if (flags & S_SYNC)
  jfs_ip->mode2 |= JFS_SYNC_FL;
}
