
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xfs_mount_t ;
struct TYPE_5__ {int q_core; } ;
typedef TYPE_1__ xfs_dquot_t ;
typedef int xfs_dqid_t ;
typedef int uint ;
typedef int fs_disk_quota_t ;


 int EFAULT ;
 int ENOENT ;
 int XFS_ERROR (int ) ;
 scalar_t__ XFS_IS_DQUOT_UNINITIALIZED (TYPE_1__*) ;
 int xfs_qm_dqget (int *,int *,int ,int ,int ,TYPE_1__**) ;
 int xfs_qm_dqput (TYPE_1__*) ;
 int xfs_qm_export_dquot (int *,int *,int *) ;

int
xfs_qm_scall_getquota(
 xfs_mount_t *mp,
 xfs_dqid_t id,
 uint type,
 fs_disk_quota_t *out)
{
 xfs_dquot_t *dqp;
 int error;






 if ((error = xfs_qm_dqget(mp, ((void*)0), id, type, 0, &dqp))) {
  return (error);
 }





 if (XFS_IS_DQUOT_UNINITIALIZED(dqp)) {
  xfs_qm_dqput(dqp);
  return XFS_ERROR(ENOENT);
 }




 xfs_qm_export_dquot(mp, &dqp->q_core, out);
 xfs_qm_dqput(dqp);
 return (error ? XFS_ERROR(EFAULT) : 0);
}
