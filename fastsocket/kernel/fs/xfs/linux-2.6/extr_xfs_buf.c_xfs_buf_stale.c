
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buftarg {int bt_lru_lock; int bt_lru_nr; } ;
struct xfs_buf {int b_lru_flags; int b_hold; int b_lru; struct xfs_buftarg* b_target; int b_lru_ref; int b_flags; } ;


 int ASSERT (int) ;
 int XBF_STALE ;
 int _XBF_LRU_DISPOSE ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
xfs_buf_stale(
 struct xfs_buf *bp)
{
 bp->b_flags |= XBF_STALE;
 atomic_set(&(bp)->b_lru_ref, 0);
 if (!list_empty(&bp->b_lru)) {
  struct xfs_buftarg *btp = bp->b_target;

  spin_lock(&btp->bt_lru_lock);
  if (!list_empty(&bp->b_lru) &&
      !(bp->b_lru_flags & _XBF_LRU_DISPOSE)) {
   list_del_init(&bp->b_lru);
   btp->bt_lru_nr--;
   atomic_dec(&bp->b_hold);
  }
  spin_unlock(&btp->bt_lru_lock);
 }
 ASSERT(atomic_read(&bp->b_hold) >= 1);
}
