
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_btree_cur {int bc_flags; } ;
typedef int __be64 ;
typedef int __be32 ;


 int XFS_BTREE_LONG_PTRS ;

__attribute__((used)) static inline size_t xfs_btree_ptr_len(struct xfs_btree_cur *cur)
{
 return (cur->bc_flags & XFS_BTREE_LONG_PTRS) ?
  sizeof(__be64) : sizeof(__be32);
}
