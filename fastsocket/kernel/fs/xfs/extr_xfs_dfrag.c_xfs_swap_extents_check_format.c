
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ if_ext_max; int if_broot; } ;
struct TYPE_8__ {scalar_t__ di_format; scalar_t__ di_nextents; } ;
struct TYPE_10__ {TYPE_2__ i_df; TYPE_1__ i_d; } ;
typedef TYPE_3__ xfs_inode_t ;


 int EINVAL ;
 scalar_t__ XFS_BMAP_BMDR_SPACE (int ) ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DINODE_FMT_BTREE ;
 scalar_t__ XFS_DINODE_FMT_EXTENTS ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 scalar_t__ XFS_IFORK_BOFF (TYPE_3__*) ;
 scalar_t__ XFS_IFORK_NEXTENTS (TYPE_3__*,int ) ;

__attribute__((used)) static int
xfs_swap_extents_check_format(
 xfs_inode_t *ip,
 xfs_inode_t *tip)
{


 if (ip->i_d.di_format == XFS_DINODE_FMT_LOCAL ||
     tip->i_d.di_format == XFS_DINODE_FMT_LOCAL)
  return EINVAL;





 if (ip->i_d.di_nextents < tip->i_d.di_nextents)
  return EINVAL;






 if (ip->i_d.di_format == XFS_DINODE_FMT_EXTENTS &&
     tip->i_d.di_format == XFS_DINODE_FMT_BTREE)
  return EINVAL;


 if (tip->i_d.di_format == XFS_DINODE_FMT_EXTENTS &&
     XFS_IFORK_NEXTENTS(tip, XFS_DATA_FORK) > ip->i_df.if_ext_max)
  return EINVAL;


 if (ip->i_d.di_format == XFS_DINODE_FMT_EXTENTS &&
     XFS_IFORK_NEXTENTS(ip, XFS_DATA_FORK) > tip->i_df.if_ext_max)
  return EINVAL;
 if (tip->i_d.di_format == XFS_DINODE_FMT_BTREE &&
     ((XFS_IFORK_BOFF(ip) &&
              XFS_BMAP_BMDR_SPACE(tip->i_df.if_broot) > XFS_IFORK_BOFF(ip)) ||
      XFS_IFORK_NEXTENTS(tip, XFS_DATA_FORK) <= ip->i_df.if_ext_max))
  return EINVAL;


 if (ip->i_d.di_format == XFS_DINODE_FMT_BTREE &&
     ((XFS_IFORK_BOFF(tip) &&
       XFS_BMAP_BMDR_SPACE(ip->i_df.if_broot) > XFS_IFORK_BOFF(tip)) ||
      XFS_IFORK_NEXTENTS(ip, XFS_DATA_FORK) <= tip->i_df.if_ext_max))
  return EINVAL;

 return 0;
}
