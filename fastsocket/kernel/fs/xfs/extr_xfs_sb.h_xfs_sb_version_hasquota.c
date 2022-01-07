
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sb_versionnum; } ;
typedef TYPE_1__ xfs_sb_t ;


 scalar_t__ XFS_SB_VERSION_4 ;
 scalar_t__ XFS_SB_VERSION_NUM (TYPE_1__*) ;
 int XFS_SB_VERSION_QUOTABIT ;

__attribute__((used)) static inline int xfs_sb_version_hasquota(xfs_sb_t *sbp)
{
 return XFS_SB_VERSION_NUM(sbp) == XFS_SB_VERSION_4 &&
  (sbp->sb_versionnum & XFS_SB_VERSION_QUOTABIT);
}
