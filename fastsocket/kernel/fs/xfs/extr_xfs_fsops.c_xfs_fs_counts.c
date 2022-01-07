
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sb_icount; int sb_ifree; int sb_frextents; scalar_t__ sb_fdblocks; } ;
struct TYPE_9__ {int m_sb_lock; TYPE_1__ m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_10__ {int allocino; int freeino; int freertx; scalar_t__ freedata; } ;
typedef TYPE_3__ xfs_fsop_counts_t ;


 scalar_t__ XFS_ALLOC_SET_ASIDE (TYPE_2__*) ;
 int XFS_ICSB_LAZY_COUNT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_icsb_sync_counters (TYPE_2__*,int ) ;

int
xfs_fs_counts(
 xfs_mount_t *mp,
 xfs_fsop_counts_t *cnt)
{
 xfs_icsb_sync_counters(mp, XFS_ICSB_LAZY_COUNT);
 spin_lock(&mp->m_sb_lock);
 cnt->freedata = mp->m_sb.sb_fdblocks - XFS_ALLOC_SET_ASIDE(mp);
 cnt->freertx = mp->m_sb.sb_frextents;
 cnt->freeino = mp->m_sb.sb_ifree;
 cnt->allocino = mp->m_sb.sb_icount;
 spin_unlock(&mp->m_sb_lock);
 return 0;
}
