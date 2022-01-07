
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int i_flags; } ;
struct ocfs2_inode_info {int ip_attr; TYPE_1__ vfs_inode; } ;


 int OCFS2_APPEND_FL ;
 int OCFS2_DIRSYNC_FL ;
 int OCFS2_IMMUTABLE_FL ;
 int OCFS2_NOATIME_FL ;
 int OCFS2_SYNC_FL ;
 unsigned int S_APPEND ;
 unsigned int S_DIRSYNC ;
 unsigned int S_IMMUTABLE ;
 unsigned int S_NOATIME ;
 unsigned int S_SYNC ;

void ocfs2_get_inode_flags(struct ocfs2_inode_info *oi)
{
 unsigned int flags = oi->vfs_inode.i_flags;

 oi->ip_attr &= ~(OCFS2_SYNC_FL|OCFS2_APPEND_FL|
   OCFS2_IMMUTABLE_FL|OCFS2_NOATIME_FL|OCFS2_DIRSYNC_FL);
 if (flags & S_SYNC)
  oi->ip_attr |= OCFS2_SYNC_FL;
 if (flags & S_APPEND)
  oi->ip_attr |= OCFS2_APPEND_FL;
 if (flags & S_IMMUTABLE)
  oi->ip_attr |= OCFS2_IMMUTABLE_FL;
 if (flags & S_NOATIME)
  oi->ip_attr |= OCFS2_NOATIME_FL;
 if (flags & S_DIRSYNC)
  oi->ip_attr |= OCFS2_DIRSYNC_FL;
}
