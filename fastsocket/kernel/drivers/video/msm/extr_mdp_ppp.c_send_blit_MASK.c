#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mdp_regs {int src_rect; int src0; int src1; int src_ystride; int src_cfg; int src_pack; int op; int phasex_init; int phasey_init; int phasex_step; int phasey_step; int dst_cfg; int dst_pack; int dst_rect; int dst0; int dst1; int dst_ystride; int edge; } ;
struct mdp_info {int dummy; } ;
struct TYPE_2__ {size_t format; } ;
struct mdp_blit_req {int alpha; int transp_mask; TYPE_1__ dst; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int MDP_DISPLAY0_START ; 
 int PPP_ADDR_ALPHA_TRANSP ; 
 int PPP_ADDR_BG0 ; 
 int PPP_ADDR_BG1 ; 
 int PPP_ADDR_BG_CFG ; 
 int PPP_ADDR_BG_PACK_PATTERN ; 
 int PPP_ADDR_BG_YSTRIDE ; 
 int PPP_ADDR_DST0 ; 
 int PPP_ADDR_DST1 ; 
 int PPP_ADDR_DST_CFG ; 
 int PPP_ADDR_DST_PACK_PATTERN ; 
 int PPP_ADDR_DST_ROI ; 
 int PPP_ADDR_DST_YSTRIDE ; 
 int PPP_ADDR_EDGE ; 
 int PPP_ADDR_OPERATION ; 
 int PPP_ADDR_PHASEX_INIT ; 
 int PPP_ADDR_PHASEX_STEP ; 
 int PPP_ADDR_PHASEY_INIT ; 
 int PPP_ADDR_PHASEY_STEP ; 
 int PPP_ADDR_SRC0 ; 
 int PPP_ADDR_SRC1 ; 
 int PPP_ADDR_SRC_CFG ; 
 int PPP_ADDR_SRC_PACK_PATTERN ; 
 int PPP_ADDR_SRC_ROI ; 
 int PPP_ADDR_SRC_YSTRIDE ; 
 int PPP_OP_BLEND_ON ; 
 int /*<<< orphan*/  FUNC0 (struct mdp_blit_req*,struct mdp_regs*,struct file*,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct mdp_info const*,int,int) ; 
 int* pack_pattern ; 
 int* src_img_cfg ; 

__attribute__((used)) static int FUNC2(const struct mdp_info *mdp, struct mdp_blit_req *req,
		     struct mdp_regs *regs, struct file *src_file,
		     struct file *dst_file)
{
	FUNC1(mdp, 1, 0x060);
	FUNC1(mdp, regs->src_rect, PPP_ADDR_SRC_ROI);
	FUNC1(mdp, regs->src0, PPP_ADDR_SRC0);
	FUNC1(mdp, regs->src1, PPP_ADDR_SRC1);
	FUNC1(mdp, regs->src_ystride, PPP_ADDR_SRC_YSTRIDE);
	FUNC1(mdp, regs->src_cfg, PPP_ADDR_SRC_CFG);
	FUNC1(mdp, regs->src_pack, PPP_ADDR_SRC_PACK_PATTERN);

	FUNC1(mdp, regs->op, PPP_ADDR_OPERATION);
	FUNC1(mdp, regs->phasex_init, PPP_ADDR_PHASEX_INIT);
	FUNC1(mdp, regs->phasey_init, PPP_ADDR_PHASEY_INIT);
	FUNC1(mdp, regs->phasex_step, PPP_ADDR_PHASEX_STEP);
	FUNC1(mdp, regs->phasey_step, PPP_ADDR_PHASEY_STEP);

	FUNC1(mdp, (req->alpha << 24) | (req->transp_mask & 0xffffff),
	       PPP_ADDR_ALPHA_TRANSP);

	FUNC1(mdp, regs->dst_cfg, PPP_ADDR_DST_CFG);
	FUNC1(mdp, regs->dst_pack, PPP_ADDR_DST_PACK_PATTERN);
	FUNC1(mdp, regs->dst_rect, PPP_ADDR_DST_ROI);
	FUNC1(mdp, regs->dst0, PPP_ADDR_DST0);
	FUNC1(mdp, regs->dst1, PPP_ADDR_DST1);
	FUNC1(mdp, regs->dst_ystride, PPP_ADDR_DST_YSTRIDE);

	FUNC1(mdp, regs->edge, PPP_ADDR_EDGE);
	if (regs->op & PPP_OP_BLEND_ON) {
		FUNC1(mdp, regs->dst0, PPP_ADDR_BG0);
		FUNC1(mdp, regs->dst1, PPP_ADDR_BG1);
		FUNC1(mdp, regs->dst_ystride, PPP_ADDR_BG_YSTRIDE);
		FUNC1(mdp, src_img_cfg[req->dst.format], PPP_ADDR_BG_CFG);
		FUNC1(mdp, pack_pattern[req->dst.format],
			   PPP_ADDR_BG_PACK_PATTERN);
	}
	FUNC0(req, regs, src_file, dst_file);
	FUNC1(mdp, 0x1000, MDP_DISPLAY0_START);
	return 0;
}