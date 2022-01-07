
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp_regs {int op; } ;
struct mdp_blit_req {int flags; } ;


 int MDP_FLIP_LR ;
 int MDP_FLIP_UD ;
 int MDP_ROT_90 ;
 int MDP_ROT_NOP ;
 int PPP_OP_FLIP_LR ;
 int PPP_OP_FLIP_UD ;
 int PPP_OP_ROT_90 ;
 int PPP_OP_ROT_ON ;
 int rotate_dst_addr_x (struct mdp_blit_req*,struct mdp_regs*) ;
 int rotate_dst_addr_y (struct mdp_blit_req*,struct mdp_regs*) ;

__attribute__((used)) static void blit_rotate(struct mdp_blit_req *req,
   struct mdp_regs *regs)
{
 if (req->flags == MDP_ROT_NOP)
  return;

 regs->op |= PPP_OP_ROT_ON;
 if ((req->flags & MDP_ROT_90 || req->flags & MDP_FLIP_LR) &&
     !(req->flags & MDP_ROT_90 && req->flags & MDP_FLIP_LR))
  rotate_dst_addr_x(req, regs);
 if (req->flags & MDP_ROT_90)
  regs->op |= PPP_OP_ROT_90;
 if (req->flags & MDP_FLIP_UD) {
  regs->op |= PPP_OP_FLIP_UD;
  rotate_dst_addr_y(req, regs);
 }
 if (req->flags & MDP_FLIP_LR)
  regs->op |= PPP_OP_FLIP_LR;
}
