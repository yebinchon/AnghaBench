
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_leaf_hdr_t ;
typedef int xfs_dir2_leaf_entry_t ;
typedef int uint ;
struct xfs_mount {int m_dirblksize; } ;



__attribute__((used)) static inline int xfs_dir2_max_leaf_ents(struct xfs_mount *mp)
{
 return (int)(((mp)->m_dirblksize - (uint)sizeof(xfs_dir2_leaf_hdr_t)) /
        (uint)sizeof(xfs_dir2_leaf_entry_t));
}
