
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_block_tail_t ;
typedef int xfs_dir2_block_t ;
struct xfs_mount {scalar_t__ m_dirblksize; } ;
typedef scalar_t__ block ;



__attribute__((used)) static inline xfs_dir2_block_tail_t *
xfs_dir2_block_tail_p(struct xfs_mount *mp, xfs_dir2_block_t *block)
{
 return (((xfs_dir2_block_tail_t *)
  ((char *)(block) + (mp)->m_dirblksize)) - 1);
}
