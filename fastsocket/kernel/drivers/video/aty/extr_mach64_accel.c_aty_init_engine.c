
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int bits_per_pixel; int xres_virtual; } ;
struct TYPE_4__ {int line_length; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; } ;
struct TYPE_6__ {int vyres; int dp_pix_width; int dp_chain_mask; } ;
struct atyfb_par {TYPE_3__ crtc; } ;


 int BKGD_MIX_D ;
 int CLR_CMP_CLR ;
 int CLR_CMP_CNTL ;
 int CLR_CMP_MASK ;
 int CONTEXT_MASK ;
 int CRTC_INT_CNTL ;
 int DP_BKGD_CLR ;
 int DP_CHAIN_MASK ;
 int DP_FRGD_CLR ;
 int DP_MIX ;
 int DP_PIX_WIDTH ;
 int DP_SRC ;
 int DP_WRITE_MASK ;
 int DST_BRES_DEC ;
 int DST_BRES_ERR ;
 int DST_BRES_INC ;
 int DST_CNTL ;
 int DST_HEIGHT ;
 int DST_LAST_PEL ;
 int DST_OFF_PITCH ;
 int DST_X_LEFT_TO_RIGHT ;
 int DST_Y_TOP_TO_BOTTOM ;
 int DST_Y_X ;
 int FRGD_MIX_S ;
 int FRGD_SRC_FRGD_CLR ;
 int GUI_TRAJ_CNTL ;
 int HOST_CNTL ;
 scalar_t__ M64_HAS (int ) ;
 int MEM_VGA_RP_SEL ;
 int MEM_VGA_WP_SEL ;
 int PAT_CNTL ;
 int PAT_REG0 ;
 int PAT_REG1 ;
 int RESET_3D ;
 int SCALE_3D_CNTL ;
 int SC_BOTTOM ;
 int SC_LEFT ;
 int SC_RIGHT ;
 int SC_TOP ;
 int SRC_CNTL ;
 int SRC_HEIGHT1_WIDTH1 ;
 int SRC_HEIGHT2_WIDTH2 ;
 int SRC_LINE_X_LEFT_TO_RIGHT ;
 int SRC_OFF_PITCH ;
 int SRC_Y_X ;
 int SRC_Y_X_START ;
 int Z_CNTL ;
 int aty_ld_le32 (int ,struct atyfb_par*) ;
 int aty_reset_engine (struct atyfb_par*) ;
 int aty_st_le32 (int ,int,struct atyfb_par*) ;
 int reset_GTC_3D_engine (struct atyfb_par*) ;
 int wait_for_fifo (int,struct atyfb_par*) ;
 int wait_for_idle (struct atyfb_par*) ;

void aty_init_engine(struct atyfb_par *par, struct fb_info *info)
{
 u32 pitch_value;
 u32 vxres;


 pitch_value = info->fix.line_length / (info->var.bits_per_pixel / 8);
 vxres = info->var.xres_virtual;

 if (info->var.bits_per_pixel == 24) {


  pitch_value *= 3;
  vxres *= 3;
 }


 if (M64_HAS(RESET_3D))
  reset_GTC_3D_engine(par);


 aty_reset_engine(par);



 aty_st_le32(MEM_VGA_WP_SEL, 0x00010000, par);
 aty_st_le32(MEM_VGA_RP_SEL, 0x00010000, par);





 wait_for_fifo(14, par);


 aty_st_le32(CONTEXT_MASK, 0xFFFFFFFF, par);


 aty_st_le32(DST_OFF_PITCH, (pitch_value / 8) << 22, par);


 aty_st_le32(DST_Y_X, 0, par);
 aty_st_le32(DST_HEIGHT, 0, par);
 aty_st_le32(DST_BRES_ERR, 0, par);
 aty_st_le32(DST_BRES_INC, 0, par);
 aty_st_le32(DST_BRES_DEC, 0, par);


 aty_st_le32(DST_CNTL, DST_LAST_PEL | DST_Y_TOP_TO_BOTTOM |
      DST_X_LEFT_TO_RIGHT, par);


 aty_st_le32(SRC_OFF_PITCH, (pitch_value / 8) << 22, par);


 aty_st_le32(SRC_Y_X, 0, par);
 aty_st_le32(SRC_HEIGHT1_WIDTH1, 1, par);
 aty_st_le32(SRC_Y_X_START, 0, par);
 aty_st_le32(SRC_HEIGHT2_WIDTH2, 1, par);


 aty_st_le32(SRC_CNTL, SRC_LINE_X_LEFT_TO_RIGHT, par);


 wait_for_fifo(13, par);
 aty_st_le32(HOST_CNTL, 0, par);


 aty_st_le32(PAT_REG0, 0, par);
 aty_st_le32(PAT_REG1, 0, par);
 aty_st_le32(PAT_CNTL, 0, par);


 aty_st_le32(SC_LEFT, 0, par);
 aty_st_le32(SC_TOP, 0, par);
 aty_st_le32(SC_BOTTOM, par->crtc.vyres - 1, par);
 aty_st_le32(SC_RIGHT, vxres - 1, par);


 aty_st_le32(DP_BKGD_CLR, 0, par);


 aty_st_le32(DP_FRGD_CLR, 0xFFFFFFFF, par);


 aty_st_le32(DP_WRITE_MASK, 0xFFFFFFFF, par);



 aty_st_le32(DP_MIX, FRGD_MIX_S | BKGD_MIX_D, par);



 aty_st_le32(DP_SRC, FRGD_SRC_FRGD_CLR, par);



 wait_for_fifo(3, par);
 aty_st_le32(CLR_CMP_CLR, 0, par);
 aty_st_le32(CLR_CMP_MASK, 0xFFFFFFFF, par);
 aty_st_le32(CLR_CMP_CNTL, 0, par);


 wait_for_fifo(2, par);
 aty_st_le32(DP_PIX_WIDTH, par->crtc.dp_pix_width, par);
 aty_st_le32(DP_CHAIN_MASK, par->crtc.dp_chain_mask, par);

 wait_for_fifo(5, par);
  aty_st_le32(SCALE_3D_CNTL, 0, par);
 aty_st_le32(Z_CNTL, 0, par);
 aty_st_le32(CRTC_INT_CNTL, aty_ld_le32(CRTC_INT_CNTL, par) & ~0x20,
      par);
 aty_st_le32(GUI_TRAJ_CNTL, 0x100023, par);


 wait_for_idle(par);
}
