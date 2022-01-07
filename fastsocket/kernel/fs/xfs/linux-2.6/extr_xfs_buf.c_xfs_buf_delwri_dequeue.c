
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int b_flags; int b_list; TYPE_1__* b_target; } ;
typedef TYPE_2__ xfs_buf_t ;
typedef int spinlock_t ;
struct TYPE_6__ {int bt_delwrite_lock; } ;


 int ASSERT (int) ;
 int XBF_DELWRI ;
 int _RET_IP_ ;
 int _XBF_DELWRI_Q ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xfs_buf_delwri_dequeue (TYPE_2__*,int ) ;
 int xfs_buf_rele (TYPE_2__*) ;

void
xfs_buf_delwri_dequeue(
 xfs_buf_t *bp)
{
 spinlock_t *dwlk = &bp->b_target->bt_delwrite_lock;
 int dequeued = 0;

 spin_lock(dwlk);
 if ((bp->b_flags & XBF_DELWRI) && !list_empty(&bp->b_list)) {
  ASSERT(bp->b_flags & _XBF_DELWRI_Q);
  list_del_init(&bp->b_list);
  dequeued = 1;
 }
 bp->b_flags &= ~(XBF_DELWRI|_XBF_DELWRI_Q);
 spin_unlock(dwlk);

 if (dequeued)
  xfs_buf_rele(bp);

 trace_xfs_buf_delwri_dequeue(bp, _RET_IP_);
}
