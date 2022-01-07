
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlog_ticket {scalar_t__ t_curr_res; int t_trans_type; } ;
struct log {int dummy; } ;


 int KM_NOFS ;
 int KM_SLEEP ;
 int XFS_TRANSACTION ;
 int XFS_TRANS_CHECKPOINT ;
 struct xlog_ticket* xlog_ticket_alloc (struct log*,int ,int,int ,int ,int) ;

__attribute__((used)) static struct xlog_ticket *
xlog_cil_ticket_alloc(
 struct log *log)
{
 struct xlog_ticket *tic;

 tic = xlog_ticket_alloc(log, 0, 1, XFS_TRANSACTION, 0,
    KM_SLEEP|KM_NOFS);
 tic->t_trans_type = XFS_TRANS_CHECKPOINT;





 tic->t_curr_res = 0;
 return tic;
}
