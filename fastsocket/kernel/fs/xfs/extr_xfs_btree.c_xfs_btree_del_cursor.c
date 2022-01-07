
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ allocated; } ;
struct TYPE_7__ {TYPE_1__ b; } ;
struct TYPE_8__ {int bc_nlevels; scalar_t__ bc_btnum; TYPE_2__ bc_private; scalar_t__* bc_bufs; int bc_tp; } ;
typedef TYPE_3__ xfs_btree_cur_t ;


 int ASSERT (int) ;
 scalar_t__ XFS_BTNUM_BMAP ;
 int kmem_zone_free (int ,TYPE_3__*) ;
 int xfs_btree_cur_zone ;
 int xfs_trans_brelse (int ,scalar_t__) ;

void
xfs_btree_del_cursor(
 xfs_btree_cur_t *cur,
 int error)
{
 int i;
 for (i = 0; i < cur->bc_nlevels; i++) {
  if (cur->bc_bufs[i])
   xfs_trans_brelse(cur->bc_tp, cur->bc_bufs[i]);
  else if (!error)
   break;
 }




 ASSERT(cur->bc_btnum != XFS_BTNUM_BMAP ||
        cur->bc_private.b.allocated == 0);



 kmem_zone_free(xfs_btree_cur_zone, cur);
}
