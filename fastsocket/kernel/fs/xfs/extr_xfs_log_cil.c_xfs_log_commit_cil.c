
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xfs_lsn_t ;
struct xfs_trans {TYPE_3__* t_ticket; int t_commit_lsn; int t_busy; } ;
struct xfs_mount {struct log* m_log; } ;
struct xfs_log_vec {int dummy; } ;
struct log {TYPE_2__* l_cilp; int l_mp; } ;
struct TYPE_8__ {scalar_t__ t_curr_res; } ;
struct TYPE_7__ {int xc_ctx_lock; TYPE_1__* xc_ctx; int xc_cil_lock; } ;
struct TYPE_6__ {scalar_t__ space_used; int busy_extents; int sequence; } ;


 int XFS_LOG_REL_PERM_RESERV ;
 int XFS_TRANS_RELEASE_LOG_RES ;
 scalar_t__ XLOG_CIL_SPACE_LIMIT (struct log*) ;
 int down_read (int *) ;
 int list_empty (int *) ;
 int list_splice_init (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;
 int xfs_log_done (struct xfs_mount*,TYPE_3__*,int *,int) ;
 int xfs_trans_free_items (struct xfs_trans*,int ,int ) ;
 int xfs_trans_unreserve_and_mod_sb (struct xfs_trans*) ;
 int xlog_cil_format_items (struct log*,struct xfs_log_vec*) ;
 int xlog_cil_insert_items (struct log*,struct xfs_log_vec*,TYPE_3__*) ;
 int xlog_cil_push (struct log*,int ) ;
 int xlog_print_tic_res (int ,TYPE_3__*) ;

void
xfs_log_commit_cil(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 struct xfs_log_vec *log_vector,
 xfs_lsn_t *commit_lsn,
 int flags)
{
 struct log *log = mp->m_log;
 int log_flags = 0;
 int push = 0;

 if (flags & XFS_TRANS_RELEASE_LOG_RES)
  log_flags = XFS_LOG_REL_PERM_RESERV;







 xlog_cil_format_items(log, log_vector);


 down_read(&log->l_cilp->xc_ctx_lock);
 if (commit_lsn)
  *commit_lsn = log->l_cilp->xc_ctx->sequence;

 xlog_cil_insert_items(log, log_vector, tp->t_ticket);


 if (tp->t_ticket->t_curr_res < 0)
  xlog_print_tic_res(log->l_mp, tp->t_ticket);


 if (!list_empty(&tp->t_busy)) {
  spin_lock(&log->l_cilp->xc_cil_lock);
  list_splice_init(&tp->t_busy,
     &log->l_cilp->xc_ctx->busy_extents);
  spin_unlock(&log->l_cilp->xc_cil_lock);
 }

 tp->t_commit_lsn = *commit_lsn;
 xfs_log_done(mp, tp->t_ticket, ((void*)0), log_flags);
 xfs_trans_unreserve_and_mod_sb(tp);
 xfs_trans_free_items(tp, *commit_lsn, 0);


 if (log->l_cilp->xc_ctx->space_used > XLOG_CIL_SPACE_LIMIT(log))
  push = 1;

 up_read(&log->l_cilp->xc_ctx_lock);
 if (push)
  xlog_cil_push(log, 0);
}
