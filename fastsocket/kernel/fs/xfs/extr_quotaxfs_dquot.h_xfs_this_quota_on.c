
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;


 int XFS_DQ_ALLTYPES ;



 int XFS_IS_OQUOTA_ON (struct xfs_mount*) ;
 int XFS_IS_UQUOTA_ON (struct xfs_mount*) ;

__attribute__((used)) static inline int xfs_this_quota_on(struct xfs_mount *mp, int type)
{
 switch (type & XFS_DQ_ALLTYPES) {
 case 128:
  return XFS_IS_UQUOTA_ON(mp);
 case 130:
 case 129:
  return XFS_IS_OQUOTA_ON(mp);
 default:
  return 0;
 }
}
