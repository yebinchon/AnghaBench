
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int m_flags; TYPE_2__* m_super; } ;
typedef TYPE_3__ xfs_mount_t ;
struct TYPE_6__ {scalar_t__ frozen; } ;
struct TYPE_7__ {TYPE_1__ s_writers; } ;


 scalar_t__ XFS_FORCED_SHUTDOWN (TYPE_3__*) ;
 int XFS_MOUNT_RDONLY ;

int
xfs_fs_writable(xfs_mount_t *mp)
{
 return !(mp->m_super->s_writers.frozen || XFS_FORCED_SHUTDOWN(mp) ||
  (mp->m_flags & XFS_MOUNT_RDONLY));
}
