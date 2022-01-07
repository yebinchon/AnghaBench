
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sb_versionnum; } ;
typedef TYPE_1__ xfs_sb_t ;


 int XFS_SB_VERSION_2 ;
 int XFS_SB_VERSION_3 ;
 int XFS_SB_VERSION_NLINKBIT ;

__attribute__((used)) static inline void xfs_sb_version_addnlink(xfs_sb_t *sbp)
{
 if (sbp->sb_versionnum <= XFS_SB_VERSION_2)
  sbp->sb_versionnum = XFS_SB_VERSION_3;
 else
  sbp->sb_versionnum |= XFS_SB_VERSION_NLINKBIT;
}
