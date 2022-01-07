
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct log {int l_curr_block; int l_curr_cycle; TYPE_2__* l_cilp; } ;
struct TYPE_4__ {TYPE_1__* xc_ctx; } ;
struct TYPE_3__ {int sequence; int commit_lsn; int ticket; } ;


 int xlog_assign_lsn (int ,int ) ;
 int xlog_cil_ticket_alloc (struct log*) ;

void
xlog_cil_init_post_recovery(
 struct log *log)
{
 if (!log->l_cilp)
  return;

 log->l_cilp->xc_ctx->ticket = xlog_cil_ticket_alloc(log);
 log->l_cilp->xc_ctx->sequence = 1;
 log->l_cilp->xc_ctx->commit_lsn = xlog_assign_lsn(log->l_curr_cycle,
        log->l_curr_block);
}
