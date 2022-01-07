
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfs_log_item {int li_seq; TYPE_3__* li_mountp; int li_cil; } ;
struct xfs_cil_ctx {int sequence; } ;
struct TYPE_6__ {int m_flags; TYPE_2__* m_log; } ;
struct TYPE_5__ {TYPE_1__* l_cilp; } ;
struct TYPE_4__ {struct xfs_cil_ctx* xc_ctx; } ;


 scalar_t__ XFS_LSN_CMP (int ,int ) ;
 int XFS_MOUNT_DELAYLOG ;
 scalar_t__ list_empty (int *) ;

bool
xfs_log_item_in_current_chkpt(
 struct xfs_log_item *lip)
{
 struct xfs_cil_ctx *ctx;

 if (!(lip->li_mountp->m_flags & XFS_MOUNT_DELAYLOG))
  return 0;
 if (list_empty(&lip->li_cil))
  return 0;

 ctx = lip->li_mountp->m_log->l_cilp->xc_ctx;






 if (XFS_LSN_CMP(lip->li_seq, ctx->sequence) != 0)
  return 0;
 return 1;
}
