
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* mp; } ;
typedef TYPE_1__ xfs_alloc_arg_t ;
struct TYPE_7__ {scalar_t__ sb_inoalignmt; } ;
struct TYPE_8__ {TYPE_2__ m_sb; } ;


 scalar_t__ XFS_B_TO_FSBT (TYPE_4__*,int ) ;
 int XFS_INODE_CLUSTER_SIZE (TYPE_4__*) ;
 scalar_t__ xfs_sb_version_hasalign (TYPE_2__*) ;

__attribute__((used)) static inline int
xfs_ialloc_cluster_alignment(
 xfs_alloc_arg_t *args)
{
 if (xfs_sb_version_hasalign(&args->mp->m_sb) &&
     args->mp->m_sb.sb_inoalignmt >=
      XFS_B_TO_FSBT(args->mp, XFS_INODE_CLUSTER_SIZE(args->mp)))
  return args->mp->m_sb.sb_inoalignmt;
 return 1;
}
