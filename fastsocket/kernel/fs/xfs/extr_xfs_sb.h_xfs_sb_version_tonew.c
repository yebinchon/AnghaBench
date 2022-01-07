
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int XFS_SB_VERSION_1 ;
 unsigned int XFS_SB_VERSION_2 ;
 int XFS_SB_VERSION_4 ;
 int XFS_SB_VERSION_ATTRBIT ;
 int XFS_SB_VERSION_NLINKBIT ;

__attribute__((used)) static inline unsigned xfs_sb_version_tonew(unsigned v)
{
 if (v == XFS_SB_VERSION_1)
  return XFS_SB_VERSION_4;

 if (v == XFS_SB_VERSION_2)
  return XFS_SB_VERSION_4 | XFS_SB_VERSION_ATTRBIT;

 return XFS_SB_VERSION_4 | XFS_SB_VERSION_ATTRBIT |
  XFS_SB_VERSION_NLINKBIT;
}
