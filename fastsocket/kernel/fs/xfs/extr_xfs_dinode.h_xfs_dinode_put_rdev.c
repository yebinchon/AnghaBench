
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dev_t ;
struct xfs_dinode {int dummy; } ;
typedef int __be32 ;


 scalar_t__ XFS_DFORK_DPTR (struct xfs_dinode*) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline void xfs_dinode_put_rdev(struct xfs_dinode *dip, xfs_dev_t rdev)
{
 *(__be32 *)XFS_DFORK_DPTR(dip) = cpu_to_be32(rdev);
}
