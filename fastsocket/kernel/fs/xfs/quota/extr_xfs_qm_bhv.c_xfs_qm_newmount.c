
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int sb_qflags; } ;
struct TYPE_13__ {int m_qflags; TYPE_3__ m_sb; } ;
typedef TYPE_1__ xfs_mount_t ;
typedef int uint ;


 int B_TRUE ;
 int EPERM ;
 int XFS_ALL_QUOTA_ACCT ;
 int XFS_ERROR (int ) ;
 int XFS_GQUOTA_ACCT ;
 int XFS_IS_GQUOTA_ON (TYPE_1__*) ;
 scalar_t__ XFS_IS_OQUOTA_ON (TYPE_1__*) ;
 scalar_t__ XFS_IS_PQUOTA_ON (TYPE_1__*) ;
 scalar_t__ XFS_IS_QUOTA_ON (TYPE_1__*) ;
 scalar_t__ XFS_IS_UQUOTA_ON (TYPE_1__*) ;
 int XFS_PQUOTA_ACCT ;
 int XFS_QM_NEED_QUOTACHECK (TYPE_1__*) ;
 int XFS_UQUOTA_ACCT ;
 scalar_t__ xfs_dev_is_read_only (TYPE_1__*,char*) ;
 int xfs_qm_mount_quotas (TYPE_1__*) ;
 scalar_t__ xfs_sb_version_hasquota (TYPE_3__*) ;
 int xfs_warn (TYPE_1__*,char*,char*,char*,char*,char*) ;

int
xfs_qm_newmount(
 xfs_mount_t *mp,
 uint *needquotamount,
 uint *quotaflags)
{
 uint quotaondisk;
 uint uquotaondisk = 0, gquotaondisk = 0, pquotaondisk = 0;

 quotaondisk = xfs_sb_version_hasquota(&mp->m_sb) &&
    (mp->m_sb.sb_qflags & XFS_ALL_QUOTA_ACCT);

 if (quotaondisk) {
  uquotaondisk = mp->m_sb.sb_qflags & XFS_UQUOTA_ACCT;
  pquotaondisk = mp->m_sb.sb_qflags & XFS_PQUOTA_ACCT;
  gquotaondisk = mp->m_sb.sb_qflags & XFS_GQUOTA_ACCT;
 }
 if (((uquotaondisk && !XFS_IS_UQUOTA_ON(mp)) ||
     (!uquotaondisk && XFS_IS_UQUOTA_ON(mp)) ||
      (pquotaondisk && !XFS_IS_PQUOTA_ON(mp)) ||
     (!pquotaondisk && XFS_IS_PQUOTA_ON(mp)) ||
      (gquotaondisk && !XFS_IS_GQUOTA_ON(mp)) ||
     (!gquotaondisk && XFS_IS_OQUOTA_ON(mp))) &&
     xfs_dev_is_read_only(mp, "changing quota state")) {
  xfs_warn(mp, "please mount with%s%s%s%s.",
   (!quotaondisk ? "out quota" : ""),
   (uquotaondisk ? " usrquota" : ""),
   (pquotaondisk ? " prjquota" : ""),
   (gquotaondisk ? " grpquota" : ""));
  return XFS_ERROR(EPERM);
 }

 if (XFS_IS_QUOTA_ON(mp) || quotaondisk) {




  if (quotaondisk && !XFS_QM_NEED_QUOTACHECK(mp)) {






   xfs_qm_mount_quotas(mp);
  } else {







   *needquotamount = B_TRUE;
   *quotaflags = mp->m_qflags;
   mp->m_qflags = 0;
  }
 }

 return 0;
}
