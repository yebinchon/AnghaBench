
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buftarg {int bt_delwrite_lock; int bt_delwrite_queue; } ;
struct xfs_buf {int b_flags; long b_queuetime; int b_list; struct xfs_buftarg* b_target; } ;


 int ASSERT (int) ;
 int XBF_DELWRI ;
 int _XBF_DELWRI_Q ;
 long jiffies ;
 int list_move (int *,int *) ;
 int msecs_to_jiffies (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_buf_age_centisecs ;

void
xfs_buf_delwri_promote(
 struct xfs_buf *bp)
{
 struct xfs_buftarg *btp = bp->b_target;
 long age = xfs_buf_age_centisecs * msecs_to_jiffies(10) + 1;

 ASSERT(bp->b_flags & XBF_DELWRI);
 ASSERT(bp->b_flags & _XBF_DELWRI_Q);





 if (bp->b_queuetime < jiffies - age)
  return;
 bp->b_queuetime = jiffies - age;
 spin_lock(&btp->bt_delwrite_lock);
 list_move(&bp->b_list, &btp->bt_delwrite_queue);
 spin_unlock(&btp->bt_delwrite_lock);
}
