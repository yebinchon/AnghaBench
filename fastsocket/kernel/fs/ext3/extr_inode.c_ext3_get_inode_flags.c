
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int i_flags; } ;
struct ext3_inode_info {int i_flags; TYPE_1__ vfs_inode; } ;


 int EXT3_APPEND_FL ;
 int EXT3_DIRSYNC_FL ;
 int EXT3_IMMUTABLE_FL ;
 int EXT3_NOATIME_FL ;
 int EXT3_SYNC_FL ;
 unsigned int S_APPEND ;
 unsigned int S_DIRSYNC ;
 unsigned int S_IMMUTABLE ;
 unsigned int S_NOATIME ;
 unsigned int S_SYNC ;

void ext3_get_inode_flags(struct ext3_inode_info *ei)
{
 unsigned int flags = ei->vfs_inode.i_flags;

 ei->i_flags &= ~(EXT3_SYNC_FL|EXT3_APPEND_FL|
   EXT3_IMMUTABLE_FL|EXT3_NOATIME_FL|EXT3_DIRSYNC_FL);
 if (flags & S_SYNC)
  ei->i_flags |= EXT3_SYNC_FL;
 if (flags & S_APPEND)
  ei->i_flags |= EXT3_APPEND_FL;
 if (flags & S_IMMUTABLE)
  ei->i_flags |= EXT3_IMMUTABLE_FL;
 if (flags & S_NOATIME)
  ei->i_flags |= EXT3_NOATIME_FL;
 if (flags & S_DIRSYNC)
  ei->i_flags |= EXT3_DIRSYNC_FL;
}
