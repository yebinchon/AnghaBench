
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_dfsbno_t ;
struct xfs_btree_cur {int bc_mp; } ;


 scalar_t__ NULLDFSBNO ;
 scalar_t__ XFS_FSB_SANITY_CHECK (int ,scalar_t__) ;
 int XFS_WANT_CORRUPTED_RETURN (int) ;

int
xfs_btree_check_lptr(
 struct xfs_btree_cur *cur,
 xfs_dfsbno_t bno,
 int level)
{
 XFS_WANT_CORRUPTED_RETURN(
  level > 0 &&
  bno != NULLDFSBNO &&
  XFS_FSB_SANITY_CHECK(cur->bc_mp, bno));
 return 0;
}
