
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgastate {int vgabase; } ;
struct TYPE_2__ {int HorizontalTotal; int HorizDisplayEnd; int StartHorizRetrace; int EndHorizRetrace; int Overflow; int StartVertRetrace; int EndVertRetrace; int ModeControl; int CrtCtrlIndex; int SeqCtrlIndex; int ClockingMode; int CrtMiscIO; } ;


 int VGA_MIS_W ;
 int VGA_SEQ_CLOCK_MODE ;
 int VGA_SEQ_I ;
 int outb_p (int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vga_lock ;
 TYPE_1__ vga_state ;
 int vga_video_port_reg ;
 int vga_video_port_val ;
 int vga_w (int ,int ,int ) ;
 int vga_wseq (int ,int ,int ) ;

__attribute__((used)) static void vga_vesa_unblank(struct vgastate *state)
{

 spin_lock_irq(&vga_lock);
 vga_w(state->vgabase, VGA_MIS_W, vga_state.CrtMiscIO);

 outb_p(0x00, vga_video_port_reg);
 outb_p(vga_state.HorizontalTotal, vga_video_port_val);
 outb_p(0x01, vga_video_port_reg);
 outb_p(vga_state.HorizDisplayEnd, vga_video_port_val);
 outb_p(0x04, vga_video_port_reg);
 outb_p(vga_state.StartHorizRetrace, vga_video_port_val);
 outb_p(0x05, vga_video_port_reg);
 outb_p(vga_state.EndHorizRetrace, vga_video_port_val);
 outb_p(0x07, vga_video_port_reg);
 outb_p(vga_state.Overflow, vga_video_port_val);
 outb_p(0x10, vga_video_port_reg);
 outb_p(vga_state.StartVertRetrace, vga_video_port_val);
 outb_p(0x11, vga_video_port_reg);
 outb_p(vga_state.EndVertRetrace, vga_video_port_val);
 outb_p(0x17, vga_video_port_reg);
 outb_p(vga_state.ModeControl, vga_video_port_val);

 vga_wseq(state->vgabase, VGA_SEQ_CLOCK_MODE, vga_state.ClockingMode);


 vga_w(state->vgabase, VGA_SEQ_I, vga_state.SeqCtrlIndex);
 outb_p(vga_state.CrtCtrlIndex, vga_video_port_reg);
 spin_unlock_irq(&vga_lock);
}
