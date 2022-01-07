
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int xfs_qoff_logitem_t ;
struct TYPE_11__ {int sb_qflags; } ;
struct TYPE_12__ {int m_qflags; int m_sb_lock; TYPE_1__ m_sb; struct xfs_quotainfo* m_quotainfo; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef int uint ;
struct xfs_quotainfo {int qi_quotaofflock; int * qi_gquotaip; int * qi_uquotaip; } ;


 int ASSERT (struct xfs_quotainfo*) ;
 int EEXIST ;
 int IRELE (int *) ;
 int SHUTDOWN_CORRUPT_INCORE ;
 int XFS_ALL_QUOTA_ACCT ;
 int XFS_ALL_QUOTA_ENFD ;
 int XFS_ERROR (int ) ;
 int XFS_GQUOTA_ACCT ;
 int XFS_GQUOTA_ACTIVE ;
 int XFS_MOUNT_QUOTA_ALL ;
 int XFS_MOUNT_QUOTA_SET1 ;
 int XFS_MOUNT_QUOTA_SET2 ;
 int XFS_OQUOTA_CHKD ;
 int XFS_OQUOTA_ENFD ;
 int XFS_PQUOTA_ACCT ;
 int XFS_PQUOTA_ACTIVE ;
 int XFS_QMOPT_GQUOTA ;
 int XFS_QMOPT_PQUOTA ;
 int XFS_QMOPT_UQUOTA ;
 int XFS_SB_QFLAGS ;
 int XFS_UQUOTA_ACCT ;
 int XFS_UQUOTA_ACTIVE ;
 int XFS_UQUOTA_CHKD ;
 int XFS_UQUOTA_ENFD ;
 int delay (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_force_shutdown (TYPE_2__*,int ) ;
 int xfs_qm_destroy_quotainfo (TYPE_2__*) ;
 int xfs_qm_dqpurge_all (TYPE_2__*,int) ;
 int xfs_qm_dqrele_all_inodes (TYPE_2__*,int) ;
 int xfs_qm_log_quotaoff (TYPE_2__*,int **,int) ;
 int xfs_qm_log_quotaoff_end (TYPE_2__*,int *,int) ;
 int xfs_qm_write_sb_changes (TYPE_2__*,int ) ;

int
xfs_qm_scall_quotaoff(
 xfs_mount_t *mp,
 uint flags)
{
 struct xfs_quotainfo *q = mp->m_quotainfo;
 uint dqtype;
 int error;
 uint inactivate_flags;
 xfs_qoff_logitem_t *qoffstart;
 int nculprits;






 if ((mp->m_qflags & flags) == 0)
  return XFS_ERROR(EEXIST);
 error = 0;

 flags &= (XFS_ALL_QUOTA_ACCT | XFS_ALL_QUOTA_ENFD);







 ASSERT(q);
 mutex_lock(&q->qi_quotaofflock);




 if ((flags & XFS_ALL_QUOTA_ACCT) == 0) {
  mp->m_qflags &= ~(flags);

  spin_lock(&mp->m_sb_lock);
  mp->m_sb.sb_qflags = mp->m_qflags;
  spin_unlock(&mp->m_sb_lock);
  mutex_unlock(&q->qi_quotaofflock);


  error = xfs_qm_write_sb_changes(mp, XFS_SB_QFLAGS);
  return (error);
 }

 dqtype = 0;
 inactivate_flags = 0;





 if (flags & XFS_UQUOTA_ACCT) {
  dqtype |= XFS_QMOPT_UQUOTA;
  flags |= (XFS_UQUOTA_CHKD | XFS_UQUOTA_ENFD);
  inactivate_flags |= XFS_UQUOTA_ACTIVE;
 }
 if (flags & XFS_GQUOTA_ACCT) {
  dqtype |= XFS_QMOPT_GQUOTA;
  flags |= (XFS_OQUOTA_CHKD | XFS_OQUOTA_ENFD);
  inactivate_flags |= XFS_GQUOTA_ACTIVE;
 } else if (flags & XFS_PQUOTA_ACCT) {
  dqtype |= XFS_QMOPT_PQUOTA;
  flags |= (XFS_OQUOTA_CHKD | XFS_OQUOTA_ENFD);
  inactivate_flags |= XFS_PQUOTA_ACTIVE;
 }





 if ((mp->m_qflags & flags) == 0)
  goto out_unlock;






 error = xfs_qm_log_quotaoff(mp, &qoffstart, flags);
 if (error)
  goto out_unlock;
 mp->m_qflags &= ~inactivate_flags;
 xfs_qm_dqrele_all_inodes(mp, flags);






 mp->m_qflags &= ~(flags);
 while ((nculprits = xfs_qm_dqpurge_all(mp, dqtype)))
  delay(10 * nculprits);
 error = xfs_qm_log_quotaoff_end(mp, qoffstart, flags);
 if (error) {

  xfs_force_shutdown(mp, SHUTDOWN_CORRUPT_INCORE);
  goto out_unlock;
 }




 if (((flags & XFS_MOUNT_QUOTA_ALL) == XFS_MOUNT_QUOTA_SET1) ||
     ((flags & XFS_MOUNT_QUOTA_ALL) == XFS_MOUNT_QUOTA_SET2)) {
  mutex_unlock(&q->qi_quotaofflock);
  xfs_qm_destroy_quotainfo(mp);
  return (0);
 }




 if ((dqtype & XFS_QMOPT_UQUOTA) && q->qi_uquotaip) {
  IRELE(q->qi_uquotaip);
  q->qi_uquotaip = ((void*)0);
 }
 if ((dqtype & (XFS_QMOPT_GQUOTA|XFS_QMOPT_PQUOTA)) && q->qi_gquotaip) {
  IRELE(q->qi_gquotaip);
  q->qi_gquotaip = ((void*)0);
 }

out_unlock:
 mutex_unlock(&q->qi_quotaofflock);
 return error;
}
