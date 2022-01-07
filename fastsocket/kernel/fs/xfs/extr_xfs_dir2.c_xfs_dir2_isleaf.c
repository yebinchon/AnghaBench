
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_6__ {int sb_dirblklog; } ;
struct TYPE_7__ {scalar_t__ m_dirleafblk; TYPE_1__ m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_8__ {TYPE_2__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
typedef scalar_t__ xfs_fileoff_t ;


 int XFS_DATA_FORK ;
 int xfs_bmap_last_offset (int *,TYPE_3__*,scalar_t__*,int ) ;

int
xfs_dir2_isleaf(
 xfs_trans_t *tp,
 xfs_inode_t *dp,
 int *vp)
{
 xfs_fileoff_t last;
 xfs_mount_t *mp;
 int rval;

 mp = dp->i_mount;
 if ((rval = xfs_bmap_last_offset(tp, dp, &last, XFS_DATA_FORK)))
  return rval;
 *vp = last == mp->m_dirleafblk + (1 << mp->m_sb.sb_dirblklog);
 return 0;
}
