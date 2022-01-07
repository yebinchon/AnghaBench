
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_btree_cur {int bc_flags; } ;


 size_t XFS_BTREE_LBLOCK_LEN ;
 int XFS_BTREE_LONG_PTRS ;
 size_t XFS_BTREE_SBLOCK_LEN ;

__attribute__((used)) static inline size_t xfs_btree_block_len(struct xfs_btree_cur *cur)
{
 return (cur->bc_flags & XFS_BTREE_LONG_PTRS) ?
  XFS_BTREE_LBLOCK_LEN :
  XFS_BTREE_SBLOCK_LEN;
}
