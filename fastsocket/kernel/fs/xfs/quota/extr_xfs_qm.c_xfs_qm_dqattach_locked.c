
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int xfs_mount_t ;
struct TYPE_14__ {int di_gid; int di_uid; } ;
struct TYPE_15__ {TYPE_5__* i_gdquot; TYPE_5__* i_udquot; TYPE_1__ i_d; int * i_mount; } ;
typedef TYPE_2__ xfs_inode_t ;
typedef int uint ;
struct TYPE_16__ {struct TYPE_16__* q_gdquot; } ;


 int ASSERT (TYPE_5__*) ;
 int XFS_DQ_GROUP ;
 int XFS_DQ_PROJ ;
 int XFS_DQ_USER ;
 int XFS_ILOCK_EXCL ;
 scalar_t__ XFS_IS_GQUOTA_ON (int *) ;
 scalar_t__ XFS_IS_OQUOTA_ON (int *) ;
 scalar_t__ XFS_IS_UQUOTA_ON (int *) ;
 int XFS_QMOPT_DQALLOC ;
 int xfs_get_projid (TYPE_2__*) ;
 TYPE_5__* xfs_isilocked (TYPE_2__*,int ) ;
 int xfs_qm_dqattach_grouphint (TYPE_5__*,TYPE_5__*) ;
 int xfs_qm_dqattach_one (TYPE_2__*,int ,int ,int,TYPE_5__*,TYPE_5__**) ;
 int xfs_qm_need_dqattach (TYPE_2__*) ;

int
xfs_qm_dqattach_locked(
 xfs_inode_t *ip,
 uint flags)
{
 xfs_mount_t *mp = ip->i_mount;
 uint nquotas = 0;
 int error = 0;

 if (!xfs_qm_need_dqattach(ip))
  return 0;

 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));

 if (XFS_IS_UQUOTA_ON(mp)) {
  error = xfs_qm_dqattach_one(ip, ip->i_d.di_uid, XFS_DQ_USER,
      flags & XFS_QMOPT_DQALLOC,
      ((void*)0), &ip->i_udquot);
  if (error)
   goto done;
  nquotas++;
 }

 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));
 if (XFS_IS_OQUOTA_ON(mp)) {
  error = XFS_IS_GQUOTA_ON(mp) ?
   xfs_qm_dqattach_one(ip, ip->i_d.di_gid, XFS_DQ_GROUP,
      flags & XFS_QMOPT_DQALLOC,
      ip->i_udquot, &ip->i_gdquot) :
   xfs_qm_dqattach_one(ip, xfs_get_projid(ip), XFS_DQ_PROJ,
      flags & XFS_QMOPT_DQALLOC,
      ip->i_udquot, &ip->i_gdquot);




  if (error)
   goto done;
  nquotas++;
 }





 if (nquotas == 2) {
  ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));
  ASSERT(ip->i_udquot);
  ASSERT(ip->i_gdquot);







  if (ip->i_udquot->q_gdquot == ip->i_gdquot)
   goto done;



  xfs_qm_dqattach_grouphint(ip->i_udquot, ip->i_gdquot);
 }

 done:
 return error;
}
