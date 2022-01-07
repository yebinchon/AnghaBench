
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sb_versionnum; int sb_features2; scalar_t__ sb_shared_vn; } ;
typedef TYPE_1__ xfs_sb_t ;


 scalar_t__ XFS_SB_MAX_SHARED_VN ;
 int XFS_SB_VERSION2_OKREALBITS ;
 int XFS_SB_VERSION_1 ;
 int XFS_SB_VERSION_3 ;
 scalar_t__ XFS_SB_VERSION_4 ;
 int XFS_SB_VERSION_MOREBITSBIT ;
 scalar_t__ XFS_SB_VERSION_NUM (TYPE_1__*) ;
 int XFS_SB_VERSION_OKREALBITS ;
 int XFS_SB_VERSION_SHAREDBIT ;

__attribute__((used)) static inline int xfs_sb_good_version(xfs_sb_t *sbp)
{

 if (sbp->sb_versionnum >= XFS_SB_VERSION_1 &&
     sbp->sb_versionnum <= XFS_SB_VERSION_3)
  return 1;


 if (XFS_SB_VERSION_NUM(sbp) == XFS_SB_VERSION_4) {
  if ((sbp->sb_versionnum & ~XFS_SB_VERSION_OKREALBITS) ||
      ((sbp->sb_versionnum & XFS_SB_VERSION_MOREBITSBIT) &&
       (sbp->sb_features2 & ~XFS_SB_VERSION2_OKREALBITS)))
   return 0;





  if ((sbp->sb_versionnum & XFS_SB_VERSION_SHAREDBIT) &&
      sbp->sb_shared_vn > XFS_SB_MAX_SHARED_VN)
   return 0;


  return 1;
 }

 return 0;
}
