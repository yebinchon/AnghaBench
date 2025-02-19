
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp_regs {int op; } ;
struct mdp_info {int dummy; } ;
struct mdp_blit_req {int flags; } ;


 int MDP_BLUR ;
 scalar_t__ MDP_DOWNSCALE_BLUR ;
 int PPP_OP_SCALE_X_ON ;
 int PPP_OP_SCALE_Y_ON ;
 scalar_t__ downscale_x_table ;
 scalar_t__ downscale_y_table ;
 int load_scale_table (struct mdp_info const*,int ,int) ;
 int mdp_gaussian_blur_table ;

__attribute__((used)) static void blit_blur(const struct mdp_info *mdp, struct mdp_blit_req *req,
        struct mdp_regs *regs)
{
 if (!(req->flags & MDP_BLUR))
  return;

 if (!(downscale_x_table == MDP_DOWNSCALE_BLUR &&
       downscale_y_table == MDP_DOWNSCALE_BLUR)) {
  load_scale_table(mdp, mdp_gaussian_blur_table, 128);
  downscale_x_table = MDP_DOWNSCALE_BLUR;
  downscale_y_table = MDP_DOWNSCALE_BLUR;
 }

 regs->op |= (PPP_OP_SCALE_Y_ON | PPP_OP_SCALE_X_ON);
}
