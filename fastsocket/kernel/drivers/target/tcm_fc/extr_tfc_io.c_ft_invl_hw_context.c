
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ft_cmd {scalar_t__ was_ddp_setup; int write_data_len; struct fc_seq* seq; } ;
struct fc_seq {int dummy; } ;
struct TYPE_2__ {int (* ddp_done ) (struct fc_lport*,scalar_t__) ;} ;
struct fc_lport {scalar_t__ lro_xid; TYPE_1__ tt; } ;
struct fc_exch {scalar_t__ xid; struct fc_lport* lp; } ;


 int BUG_ON (int) ;
 struct fc_exch* fc_seq_exch (struct fc_seq*) ;
 int stub1 (struct fc_lport*,scalar_t__) ;

void ft_invl_hw_context(struct ft_cmd *cmd)
{
 struct fc_seq *seq;
 struct fc_exch *ep = ((void*)0);
 struct fc_lport *lport = ((void*)0);

 BUG_ON(!cmd);
 seq = cmd->seq;


 if (cmd->was_ddp_setup && seq) {
  ep = fc_seq_exch(seq);
  if (ep) {
   lport = ep->lp;
   if (lport && (ep->xid <= lport->lro_xid))




    cmd->write_data_len = lport->tt.ddp_done(lport,
              ep->xid);







    cmd->was_ddp_setup = 0;
  }
 }
}
