
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_leaf_tail_t ;
typedef int xfs_dir2_leaf_t ;
typedef int uint ;
struct xfs_mount {scalar_t__ m_dirblksize; } ;
typedef scalar_t__ lp ;



__attribute__((used)) static inline xfs_dir2_leaf_tail_t *
xfs_dir2_leaf_tail_p(struct xfs_mount *mp, xfs_dir2_leaf_t *lp)
{
 return (xfs_dir2_leaf_tail_t *)
  ((char *)(lp) + (mp)->m_dirblksize -
    (uint)sizeof(xfs_dir2_leaf_tail_t));
}
