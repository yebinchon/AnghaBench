
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xfs_mount_t ;
struct TYPE_7__ {int * i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
struct TYPE_8__ {int q_core; } ;
typedef TYPE_2__ xfs_dquot_t ;
struct kstatfs {int dummy; } ;


 int XFS_DQ_PROJ ;
 int xfs_fill_statvfs_from_dquot (struct kstatfs*,int *) ;
 int xfs_get_projid (TYPE_1__*) ;
 int xfs_qm_dqget (int *,int *,int ,int ,int ,TYPE_2__**) ;
 int xfs_qm_dqput (TYPE_2__*) ;

void
xfs_qm_statvfs(
 xfs_inode_t *ip,
 struct kstatfs *statp)
{
 xfs_mount_t *mp = ip->i_mount;
 xfs_dquot_t *dqp;

 if (!xfs_qm_dqget(mp, ((void*)0), xfs_get_projid(ip), XFS_DQ_PROJ, 0, &dqp)) {
  xfs_fill_statvfs_from_dquot(statp, &dqp->q_core);
  xfs_qm_dqput(dqp);
 }
}
