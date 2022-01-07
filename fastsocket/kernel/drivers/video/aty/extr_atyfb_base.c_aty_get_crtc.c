
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crtc {int lcd_index; int lcd_gen_cntl; void* shadow_v_sync_strt_wid; void* shadow_v_tot_disp; void* shadow_h_sync_strt_wid; void* shadow_h_tot_disp; void* gen_cntl; void* off_pitch; void* vline_crnt_vline; void* v_sync_strt_wid; void* v_tot_disp; void* h_sync_strt_wid; void* h_tot_disp; void* ext_vert_stretch; void* vert_stretching; void* horz_stretching; void* lcd_config_panel; } ;
struct atyfb_par {scalar_t__ lcd_table; } ;


 int CNFG_PANEL ;
 int CRTC_GEN_CNTL ;
 int CRTC_H_SYNC_STRT_WID ;
 int CRTC_H_TOTAL_DISP ;
 int CRTC_OFF_PITCH ;
 int CRTC_RW_SELECT ;
 int CRTC_VLINE_CRNT_VLINE ;
 int CRTC_V_SYNC_STRT_WID ;
 int CRTC_V_TOTAL_DISP ;
 int EXT_VERT_STRETCH ;
 int HORZ_STRETCHING ;
 int LCD_GEN_CNTL ;
 int LCD_INDEX ;
 int LT_LCD_REGS ;
 int M64_HAS (int ) ;
 int SHADOW_EN ;
 int SHADOW_RW_EN ;
 int VERT_STRETCHING ;
 void* aty_ld_lcd (int ,struct atyfb_par const*) ;
 void* aty_ld_le32 (int ,struct atyfb_par const*) ;
 int aty_st_lcd (int ,int,struct atyfb_par const*) ;
 int aty_st_le32 (int ,int,struct atyfb_par const*) ;

__attribute__((used)) static void aty_get_crtc(const struct atyfb_par *par, struct crtc *crtc)
{
 crtc->h_tot_disp = aty_ld_le32(CRTC_H_TOTAL_DISP, par);
 crtc->h_sync_strt_wid = aty_ld_le32(CRTC_H_SYNC_STRT_WID, par);
 crtc->v_tot_disp = aty_ld_le32(CRTC_V_TOTAL_DISP, par);
 crtc->v_sync_strt_wid = aty_ld_le32(CRTC_V_SYNC_STRT_WID, par);
 crtc->vline_crnt_vline = aty_ld_le32(CRTC_VLINE_CRNT_VLINE, par);
 crtc->off_pitch = aty_ld_le32(CRTC_OFF_PITCH, par);
 crtc->gen_cntl = aty_ld_le32(CRTC_GEN_CNTL, par);
}
