
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sb_versionnum; } ;
typedef TYPE_1__ xfs_sb_t ;


 int XFS_SB_VERSION_1 ;
 int XFS_SB_VERSION_2 ;
 int XFS_SB_VERSION_4 ;
 int XFS_SB_VERSION_ATTRBIT ;
 int XFS_SB_VERSION_NUM (TYPE_1__*) ;

__attribute__((used)) static inline void xfs_sb_version_addattr(xfs_sb_t *sbp)
{
 if (sbp->sb_versionnum == XFS_SB_VERSION_1)
  sbp->sb_versionnum = XFS_SB_VERSION_2;
 else if (XFS_SB_VERSION_NUM(sbp) == XFS_SB_VERSION_4)
  sbp->sb_versionnum |= XFS_SB_VERSION_ATTRBIT;
 else
  sbp->sb_versionnum = XFS_SB_VERSION_4 | XFS_SB_VERSION_ATTRBIT;
}
