
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mdp_regs {int dst0; int dst_bpp; int dst1; } ;
struct TYPE_2__ {int w; } ;
struct mdp_blit_req {TYPE_1__ dst_rect; } ;


 int min (int ,int) ;

__attribute__((used)) static void rotate_dst_addr_x(struct mdp_blit_req *req, struct mdp_regs *regs)
{
 regs->dst0 += (req->dst_rect.w -
         min((uint32_t)16, req->dst_rect.w)) * regs->dst_bpp;
 regs->dst1 += (req->dst_rect.w -
         min((uint32_t)16, req->dst_rect.w)) * regs->dst_bpp;
}
