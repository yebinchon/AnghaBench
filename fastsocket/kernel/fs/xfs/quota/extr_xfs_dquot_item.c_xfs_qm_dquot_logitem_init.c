
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d_id; } ;
struct TYPE_4__ {int qlf_len; scalar_t__ qlf_boffset; int qlf_blkno; int qlf_id; int qlf_type; } ;
struct xfs_dq_logitem {TYPE_2__ qli_format; struct xfs_dquot* qli_dquot; int qli_item; } ;
struct xfs_dquot {scalar_t__ q_bufoffset; int q_blkno; TYPE_1__ q_core; int q_mount; struct xfs_dq_logitem q_logitem; } ;
typedef scalar_t__ __uint32_t ;


 int XFS_LI_DQUOT ;
 int be32_to_cpu (int ) ;
 int xfs_dquot_item_ops ;
 int xfs_log_item_init (int ,int *,int ,int *) ;

void
xfs_qm_dquot_logitem_init(
 struct xfs_dquot *dqp)
{
 struct xfs_dq_logitem *lp = &dqp->q_logitem;

 xfs_log_item_init(dqp->q_mount, &lp->qli_item, XFS_LI_DQUOT,
     &xfs_dquot_item_ops);
 lp->qli_dquot = dqp;
 lp->qli_format.qlf_type = XFS_LI_DQUOT;
 lp->qli_format.qlf_id = be32_to_cpu(dqp->q_core.d_id);
 lp->qli_format.qlf_blkno = dqp->q_blkno;
 lp->qli_format.qlf_len = 1;







 lp->qli_format.qlf_boffset = (__uint32_t)dqp->q_bufoffset;
}
