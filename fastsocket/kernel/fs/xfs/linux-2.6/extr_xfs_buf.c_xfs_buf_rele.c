
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int b_flags; int b_rbnode; int b_lru_ref; int b_hold; int b_lru; struct xfs_perag* b_pag; } ;
typedef TYPE_1__ xfs_buf_t ;
struct xfs_perag {int pag_buf_lock; int pag_buf_tree; } ;


 int ASSERT (int) ;
 int RB_EMPTY_NODE (int *) ;
 int XBF_DELWRI ;
 int XBF_STALE ;
 int _RET_IP_ ;
 int _XBF_DELWRI_Q ;
 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int list_empty (int *) ;
 int rb_erase (int *,int *) ;
 int spin_unlock (int *) ;
 int trace_xfs_buf_rele (TYPE_1__*,int ) ;
 int xfs_buf_free (TYPE_1__*) ;
 int xfs_buf_lru_add (TYPE_1__*) ;
 int xfs_buf_lru_del (TYPE_1__*) ;
 int xfs_perag_put (struct xfs_perag*) ;

void
xfs_buf_rele(
 xfs_buf_t *bp)
{
 struct xfs_perag *pag = bp->b_pag;

 trace_xfs_buf_rele(bp, _RET_IP_);

 if (!pag) {
  ASSERT(list_empty(&bp->b_lru));
  ASSERT(RB_EMPTY_NODE(&bp->b_rbnode));
  if (atomic_dec_and_test(&bp->b_hold))
   xfs_buf_free(bp);
  return;
 }

 ASSERT(!RB_EMPTY_NODE(&bp->b_rbnode));

 ASSERT(atomic_read(&bp->b_hold) > 0);
 if (atomic_dec_and_lock(&bp->b_hold, &pag->pag_buf_lock)) {
  if (!(bp->b_flags & XBF_STALE) &&
      atomic_read(&bp->b_lru_ref)) {
   xfs_buf_lru_add(bp);
   spin_unlock(&pag->pag_buf_lock);
  } else {
   xfs_buf_lru_del(bp);
   ASSERT(!(bp->b_flags & (XBF_DELWRI|_XBF_DELWRI_Q)));
   rb_erase(&bp->b_rbnode, &pag->pag_buf_tree);
   spin_unlock(&pag->pag_buf_lock);
   xfs_perag_put(pag);
   xfs_buf_free(bp);
  }
 }
}
