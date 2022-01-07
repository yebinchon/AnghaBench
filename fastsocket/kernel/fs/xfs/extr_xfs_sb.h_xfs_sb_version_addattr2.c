
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sb_features2; int sb_versionnum; } ;
typedef TYPE_1__ xfs_sb_t ;


 int XFS_SB_VERSION2_ATTR2BIT ;
 int XFS_SB_VERSION_MOREBITSBIT ;

__attribute__((used)) static inline void xfs_sb_version_addattr2(xfs_sb_t *sbp)
{
 sbp->sb_versionnum |= XFS_SB_VERSION_MOREBITSBIT;
 sbp->sb_features2 |= XFS_SB_VERSION2_ATTR2BIT;
}
