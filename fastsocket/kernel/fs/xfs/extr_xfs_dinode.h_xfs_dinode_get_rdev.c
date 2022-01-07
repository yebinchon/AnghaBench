
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dev_t ;
struct xfs_dinode {int dummy; } ;
typedef int __be32 ;


 scalar_t__ XFS_DFORK_DPTR (struct xfs_dinode*) ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline xfs_dev_t xfs_dinode_get_rdev(struct xfs_dinode *dip)
{
 return be32_to_cpu(*(__be32 *)XFS_DFORK_DPTR(dip));
}
