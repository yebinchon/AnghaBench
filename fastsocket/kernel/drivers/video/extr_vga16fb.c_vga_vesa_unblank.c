
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char CrtMiscIO; int ClockingMode; int ModeControl; int EndVertRetrace; int StartVertRetrace; int Overflow; int EndHorizRetrace; int StartHorizRetrace; int HorizDisplayEnd; int HorizontalTotal; } ;
struct vga16fb_par {TYPE_1__ vga_state; } ;


 int VGA_CRT_IC ;
 int VGA_MIS_W ;
 int VGA_SEQ_I ;
 unsigned char vga_io_r (int ) ;
 int vga_io_w (int ,unsigned char) ;
 int vga_io_wcrt (int,int ) ;
 int vga_io_wseq (int,int ) ;

__attribute__((used)) static void vga_vesa_unblank(struct vga16fb_par *par)
{
 unsigned char SeqCtrlIndex = vga_io_r(VGA_SEQ_I);
 unsigned char CrtCtrlIndex = vga_io_r(VGA_CRT_IC);


 vga_io_w(VGA_MIS_W, par->vga_state.CrtMiscIO);


 vga_io_wcrt(0x00, par->vga_state.HorizontalTotal);

 vga_io_wcrt(0x01, par->vga_state.HorizDisplayEnd);

 vga_io_wcrt(0x04, par->vga_state.StartHorizRetrace);

 vga_io_wcrt(0x05, par->vga_state.EndHorizRetrace);

 vga_io_wcrt(0x07, par->vga_state.Overflow);

 vga_io_wcrt(0x10, par->vga_state.StartVertRetrace);

 vga_io_wcrt(0x11, par->vga_state.EndVertRetrace);

 vga_io_wcrt(0x17, par->vga_state.ModeControl);

 vga_io_wseq(0x01, par->vga_state.ClockingMode);


 vga_io_w(VGA_SEQ_I, SeqCtrlIndex);
 vga_io_w(VGA_CRT_IC, CrtCtrlIndex);
}
