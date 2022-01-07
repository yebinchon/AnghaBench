
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int m_qflags; TYPE_1__* m_quotainfo; int m_ddev_targp; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef int xfs_inode_t ;
typedef scalar_t__ xfs_ino_t ;
typedef int uint ;
struct TYPE_15__ {int * qi_gquotaip; int * qi_uquotaip; int qi_dqlist; } ;


 int ASSERT (int) ;
 int INT_MAX ;
 scalar_t__ XFS_IS_GQUOTA_ON (TYPE_2__*) ;
 int XFS_IS_QUOTA_RUNNING (TYPE_2__*) ;
 int XFS_OQUOTA_CHKD ;
 int XFS_QMOPT_GQUOTA ;
 int XFS_QMOPT_PQUOTA ;
 int XFS_QMOPT_QUOTALL ;
 int XFS_QMOPT_UQUOTA ;
 int XFS_UQUOTA_CHKD ;
 int XFS_bflush (int ) ;
 int list_empty (int *) ;
 int * xfs_Gqm ;
 int xfs_bulkstat (TYPE_2__*,scalar_t__*,int*,int ,size_t,int *,int*) ;
 scalar_t__ xfs_mount_reset_sbqflags (TYPE_2__*) ;
 int xfs_notice (TYPE_2__*,char*) ;
 int xfs_qm_destroy_quotainfo (TYPE_2__*) ;
 int xfs_qm_dqflush_all (TYPE_2__*,int ) ;
 int xfs_qm_dqiterate (TYPE_2__*,int *,int ) ;
 int xfs_qm_dqpurge_all (TYPE_2__*,int ) ;
 int xfs_qm_dquot_list_print (TYPE_2__*) ;
 int xfs_qm_dqusage_adjust ;
 int xfs_warn (TYPE_2__*,char*,...) ;

int
xfs_qm_quotacheck(
 xfs_mount_t *mp)
{
 int done, count, error;
 xfs_ino_t lastino;
 size_t structsz;
 xfs_inode_t *uip, *gip;
 uint flags;

 count = INT_MAX;
 structsz = 1;
 lastino = 0;
 flags = 0;

 ASSERT(mp->m_quotainfo->qi_uquotaip || mp->m_quotainfo->qi_gquotaip);
 ASSERT(XFS_IS_QUOTA_RUNNING(mp));





 ASSERT(list_empty(&mp->m_quotainfo->qi_dqlist));

 xfs_notice(mp, "Quotacheck needed: Please wait.");






 uip = mp->m_quotainfo->qi_uquotaip;
 if (uip) {
  error = xfs_qm_dqiterate(mp, uip, XFS_QMOPT_UQUOTA);
  if (error)
   goto error_return;
  flags |= XFS_UQUOTA_CHKD;
 }

 gip = mp->m_quotainfo->qi_gquotaip;
 if (gip) {
  error = xfs_qm_dqiterate(mp, gip, XFS_IS_GQUOTA_ON(mp) ?
     XFS_QMOPT_GQUOTA : XFS_QMOPT_PQUOTA);
  if (error)
   goto error_return;
  flags |= XFS_OQUOTA_CHKD;
 }

 do {




  error = xfs_bulkstat(mp, &lastino, &count,
         xfs_qm_dqusage_adjust,
         structsz, ((void*)0), &done);
  if (error)
   break;

 } while (!done);






 if (!error)
  error = xfs_qm_dqflush_all(mp, 0);
 if (error) {
  xfs_qm_dqpurge_all(mp, XFS_QMOPT_QUOTALL);
  goto error_return;
 }
 XFS_bflush(mp->m_ddev_targp);






 mp->m_qflags &= ~(XFS_OQUOTA_CHKD | XFS_UQUOTA_CHKD);
 mp->m_qflags |= flags;

 xfs_qm_dquot_list_print(mp);

 error_return:
 if (error) {
  xfs_warn(mp,
 "Quotacheck: Unsuccessful (Error %d): Disabling quotas.",
   error);



  ASSERT(mp->m_quotainfo != ((void*)0));
  ASSERT(xfs_Gqm != ((void*)0));
  xfs_qm_destroy_quotainfo(mp);
  if (xfs_mount_reset_sbqflags(mp)) {
   xfs_warn(mp,
    "Quotacheck: Failed to reset quota flags.");
  }
 } else
  xfs_notice(mp, "Quotacheck: Done.");
 return (error);
}
