
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_11__ {int m_bsize; int m_ddev_targp; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef int xfs_buf_t ;
struct TYPE_12__ {int bc_nlevels; int ** bc_bufs; int * bc_ra; int * bc_ptrs; int bc_rec; TYPE_1__* bc_ops; TYPE_2__* bc_mp; int * bc_tp; } ;
typedef TYPE_3__ xfs_btree_cur_t ;
struct TYPE_10__ {TYPE_3__* (* dup_cursor ) (TYPE_3__*) ;} ;


 int ASSERT (int) ;
 int XFS_BUF_ADDR (int *) ;
 int XFS_BUF_GETERROR (int *) ;
 TYPE_3__* stub1 (TYPE_3__*) ;
 int xfs_btree_del_cursor (TYPE_3__*,int) ;
 int xfs_trans_read_buf (TYPE_2__*,int *,int ,int ,int ,int ,int **) ;

int
xfs_btree_dup_cursor(
 xfs_btree_cur_t *cur,
 xfs_btree_cur_t **ncur)
{
 xfs_buf_t *bp;
 int error;
 int i;
 xfs_mount_t *mp;
 xfs_btree_cur_t *new;
 xfs_trans_t *tp;

 tp = cur->bc_tp;
 mp = cur->bc_mp;




 new = cur->bc_ops->dup_cursor(cur);




 new->bc_rec = cur->bc_rec;




 for (i = 0; i < new->bc_nlevels; i++) {
  new->bc_ptrs[i] = cur->bc_ptrs[i];
  new->bc_ra[i] = cur->bc_ra[i];
  if ((bp = cur->bc_bufs[i])) {
   if ((error = xfs_trans_read_buf(mp, tp, mp->m_ddev_targp,
    XFS_BUF_ADDR(bp), mp->m_bsize, 0, &bp))) {
    xfs_btree_del_cursor(new, error);
    *ncur = ((void*)0);
    return error;
   }
   new->bc_bufs[i] = bp;
   ASSERT(bp);
   ASSERT(!XFS_BUF_GETERROR(bp));
  } else
   new->bc_bufs[i] = ((void*)0);
 }
 *ncur = new;
 return 0;
}
