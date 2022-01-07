
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sb_features2; } ;
typedef TYPE_1__ xfs_sb_t ;


 int XFS_SB_VERSION2_ATTR2BIT ;
 scalar_t__ xfs_sb_version_hasmorebits (TYPE_1__*) ;

__attribute__((used)) static inline int xfs_sb_version_hasattr2(xfs_sb_t *sbp)
{
 return xfs_sb_version_hasmorebits(sbp) &&
  (sbp->sb_features2 & XFS_SB_VERSION2_ATTR2BIT);
}
