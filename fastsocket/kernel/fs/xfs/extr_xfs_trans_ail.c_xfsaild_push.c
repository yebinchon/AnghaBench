
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__* m_ddev_targp; int m_log; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef scalar_t__ xfs_lsn_t ;
struct TYPE_18__ {scalar_t__ li_lsn; } ;
typedef TYPE_3__ xfs_log_item_t ;
struct xfs_ail_cursor {int dummy; } ;
struct xfs_ail {scalar_t__ xa_target; scalar_t__ xa_log_flush; int xa_lock; int xa_ail; struct xfs_ail_cursor xa_cursors; TYPE_2__* xa_mount; } ;
struct TYPE_16__ {int bt_task; } ;


 int ASSERT (int ) ;
 int IOP_PUSH (TYPE_3__*) ;
 int IOP_PUSHBUF (TYPE_3__*) ;
 int IOP_TRYLOCK (TYPE_3__*) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (TYPE_2__*) ;




 int XFS_LOG_SYNC ;
 scalar_t__ XFS_LSN_CMP (scalar_t__,scalar_t__) ;
 int XFS_STATS_INC (int ) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xfs_ail_locked (TYPE_3__*) ;
 int trace_xfs_ail_pinned (TYPE_3__*) ;
 int trace_xfs_ail_push (TYPE_3__*) ;
 int trace_xfs_ail_pushbuf (TYPE_3__*) ;
 int trace_xfs_ail_pushbuf_pinned (TYPE_3__*) ;
 int wake_up_process (int ) ;
 int xfs_log_force (TYPE_2__*,int ) ;
 int xfs_trans_ail_cursor_done (struct xfs_ail*,struct xfs_ail_cursor*) ;
 TYPE_3__* xfs_trans_ail_cursor_first (struct xfs_ail*,struct xfs_ail_cursor*,scalar_t__) ;
 int xfs_trans_ail_cursor_init (struct xfs_ail*,struct xfs_ail_cursor*) ;
 TYPE_3__* xfs_trans_ail_cursor_next (struct xfs_ail*,struct xfs_ail_cursor*) ;
 int xs_push_ail ;
 int xs_push_ail_flush ;
 int xs_push_ail_locked ;
 int xs_push_ail_pinned ;
 int xs_push_ail_pushbuf ;
 int xs_push_ail_success ;

long
xfsaild_push(
 struct xfs_ail *ailp,
 xfs_lsn_t *last_lsn)
{
 long tout = 10;
 xfs_lsn_t last_pushed_lsn = *last_lsn;
 xfs_lsn_t target;
 xfs_lsn_t lsn;
 xfs_log_item_t *lip;
 int flush_log, count, stuck;
 xfs_mount_t *mp = ailp->xa_mount;
 struct xfs_ail_cursor *cur = &ailp->xa_cursors;
 int push_xfsbufd = 0;





 spin_lock(&ailp->xa_lock);
 if (last_pushed_lsn == 0 && ailp->xa_log_flush &&
     !list_empty(&ailp->xa_ail)) {
  ailp->xa_log_flush = 0;
  spin_unlock(&ailp->xa_lock);
  XFS_STATS_INC(xs_push_ail_flush);
  xfs_log_force(mp, XFS_LOG_SYNC);
  spin_lock(&ailp->xa_lock);
 }

 target = ailp->xa_target;
 xfs_trans_ail_cursor_init(ailp, cur);
 lip = xfs_trans_ail_cursor_first(ailp, cur, *last_lsn);
 if (!lip || XFS_FORCED_SHUTDOWN(mp)) {



  xfs_trans_ail_cursor_done(ailp, cur);
  spin_unlock(&ailp->xa_lock);
  *last_lsn = 0;
  tout = 50;
  return tout;
 }

 XFS_STATS_INC(xs_push_ail);
 lsn = lip->li_lsn;
 flush_log = stuck = count = 0;
 while ((XFS_LSN_CMP(lip->li_lsn, target) <= 0)) {
  int lock_result;
  lock_result = IOP_TRYLOCK(lip);
  spin_unlock(&ailp->xa_lock);
  switch (lock_result) {
  case 128:
   XFS_STATS_INC(xs_push_ail_success);
   trace_xfs_ail_push(lip);

   IOP_PUSH(lip);
   last_pushed_lsn = lsn;
   break;

  case 129:
   XFS_STATS_INC(xs_push_ail_pushbuf);
   trace_xfs_ail_pushbuf(lip);

   if (!IOP_PUSHBUF(lip)) {
    trace_xfs_ail_pushbuf_pinned(lip);
    stuck++;
    ailp->xa_log_flush++;
   } else {
    last_pushed_lsn = lsn;
   }
   push_xfsbufd = 1;
   break;

  case 130:
   XFS_STATS_INC(xs_push_ail_pinned);
   trace_xfs_ail_pinned(lip);

   stuck++;
   ailp->xa_log_flush++;
   break;

  case 131:
   XFS_STATS_INC(xs_push_ail_locked);
   trace_xfs_ail_locked(lip);
   stuck++;
   break;

  default:
   ASSERT(0);
   break;
  }

  spin_lock(&ailp->xa_lock);

  if (XFS_FORCED_SHUTDOWN(mp))
   break;
  ASSERT(mp->m_log);

  count++;
  if (stuck > 100)
   break;

  lip = xfs_trans_ail_cursor_next(ailp, cur);
  if (lip == ((void*)0))
   break;
  lsn = lip->li_lsn;
 }
 xfs_trans_ail_cursor_done(ailp, cur);
 spin_unlock(&ailp->xa_lock);

 if (push_xfsbufd) {

  wake_up_process(mp->m_ddev_targp->bt_task);
 }

 if (!count) {

  last_pushed_lsn = 0;
  ailp->xa_log_flush = 0;

  tout = 50;
 } else if (XFS_LSN_CMP(lsn, target) >= 0) {





  tout = 50;
  last_pushed_lsn = 0;
 } else if ((stuck * 100) / count > 90) {
  tout = 20;
  last_pushed_lsn = 0;
 }

 *last_lsn = last_pushed_lsn;
 return tout;
}
