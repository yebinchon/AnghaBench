
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int t_flags; } ;
typedef TYPE_4__ xfs_trans_t ;
struct TYPE_10__ {TYPE_1__* li_desc; } ;
struct TYPE_11__ {TYPE_2__ qli_item; } ;
struct TYPE_13__ {TYPE_3__ q_logitem; TYPE_4__* q_transp; } ;
typedef TYPE_5__ xfs_dquot_t ;
struct TYPE_9__ {int lid_flags; } ;


 int ASSERT (int) ;
 int XFS_DQ_IS_LOCKED (TYPE_5__*) ;
 int XFS_LID_DIRTY ;
 int XFS_TRANS_DIRTY ;

void
xfs_trans_log_dquot(
 xfs_trans_t *tp,
 xfs_dquot_t *dqp)
{
 ASSERT(dqp->q_transp == tp);
 ASSERT(XFS_DQ_IS_LOCKED(dqp));

 tp->t_flags |= XFS_TRANS_DIRTY;
 dqp->q_logitem.qli_item.li_desc->lid_flags |= XFS_LID_DIRTY;
}
