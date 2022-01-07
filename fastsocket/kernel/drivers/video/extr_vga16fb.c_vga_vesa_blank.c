
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CrtMiscIO; int Overflow; int ClockingMode; void* ModeControl; void* EndVertRetrace; void* StartVertRetrace; void* EndHorizRetrace; void* StartHorizRetrace; void* HorizDisplayEnd; void* HorizontalTotal; } ;
struct vga16fb_par {TYPE_1__ vga_state; int vesa_blanked; } ;


 int FB_BLANK_HSYNC_SUSPEND ;
 int FB_BLANK_VSYNC_SUSPEND ;
 int VGA_CRTC_H_SYNC_END ;
 int VGA_CRTC_H_SYNC_START ;
 int VGA_CRTC_OVERFLOW ;
 int VGA_CRTC_V_SYNC_END ;
 int VGA_CRTC_V_SYNC_START ;
 int VGA_CRT_IC ;
 int VGA_MIS_R ;
 int VGA_MIS_W ;
 int VGA_SEQ_I ;
 int outb_p (unsigned char,int ) ;
 void* vga_io_r (int ) ;
 void* vga_io_rcrt (int) ;
 int vga_io_rseq (int) ;
 int vga_io_w (int ,int) ;
 int vga_io_wcrt (int ,int) ;
 int vga_io_wseq (int,int) ;

__attribute__((used)) static void vga_vesa_blank(struct vga16fb_par *par, int mode)
{
 unsigned char SeqCtrlIndex = vga_io_r(VGA_SEQ_I);
 unsigned char CrtCtrlIndex = vga_io_r(VGA_CRT_IC);


 if(!par->vesa_blanked) {
  par->vga_state.CrtMiscIO = vga_io_r(VGA_MIS_R);


  par->vga_state.HorizontalTotal = vga_io_rcrt(0x00);
  par->vga_state.HorizDisplayEnd = vga_io_rcrt(0x01);
  par->vga_state.StartHorizRetrace = vga_io_rcrt(0x04);
  par->vga_state.EndHorizRetrace = vga_io_rcrt(0x05);
  par->vga_state.Overflow = vga_io_rcrt(0x07);
  par->vga_state.StartVertRetrace = vga_io_rcrt(0x10);
  par->vga_state.EndVertRetrace = vga_io_rcrt(0x11);
  par->vga_state.ModeControl = vga_io_rcrt(0x17);
  par->vga_state.ClockingMode = vga_io_rseq(0x01);
 }



 vga_io_wseq(0x01, par->vga_state.ClockingMode | 0x20);


 if ((par->vga_state.CrtMiscIO & 0x80) == 0x80)
  vga_io_w(VGA_MIS_W, par->vga_state.CrtMiscIO & 0xef);






 if (mode & FB_BLANK_VSYNC_SUSPEND) {
  vga_io_wcrt(VGA_CRTC_V_SYNC_START, 0xff);
  vga_io_wcrt(VGA_CRTC_V_SYNC_END, 0x40);

  vga_io_wcrt(VGA_CRTC_OVERFLOW, par->vga_state.Overflow | 0x84);
 }

 if (mode & FB_BLANK_HSYNC_SUSPEND) {





  vga_io_wcrt(VGA_CRTC_H_SYNC_START, 0xff);
  vga_io_wcrt(VGA_CRTC_H_SYNC_END, 0x00);
 }


 outb_p(SeqCtrlIndex, VGA_SEQ_I);
 outb_p(CrtCtrlIndex, VGA_CRT_IC);
}
