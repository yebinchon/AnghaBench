
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct falcon_hw {int st_shift; int f_shift; int sync; int xoffset; int ste_mode; int mono; int vss; int vde; int vdb; int vbe; int vbb; int vft; int hss; int hde; int hdb; int hbe; int hbb; int hht; int vid_mode; int vid_control; int line_offset; int line_width; } ;
struct TYPE_5__ {struct falcon_hw falcon; } ;
struct atafb_par {int screen_base; TYPE_1__ hw; } ;
struct TYPE_8__ {int syncmode; int bas_hi; int bas_md; int bas_lo; } ;
struct TYPE_7__ {int off_next; int scn_width; } ;
struct TYPE_6__ {int st_shift; int f_shift; int xoffset; int vss; int vde; int vdb; int vbe; int vbb; int vft; int hss; int hde; int hdb; int hbe; int hbb; int hht; int mode; int control; } ;


 int phys_to_virt (unsigned long) ;
 TYPE_4__ shifter ;
 TYPE_3__ shifter_f030 ;
 TYPE_2__ videl ;

__attribute__((used)) static void falcon_get_par(struct atafb_par *par)
{
 unsigned long addr;
 struct falcon_hw *hw = &par->hw.falcon;

 hw->line_width = shifter_f030.scn_width;
 hw->line_offset = shifter_f030.off_next;
 hw->st_shift = videl.st_shift & 0x300;
 hw->f_shift = videl.f_shift;
 hw->vid_control = videl.control;
 hw->vid_mode = videl.mode;
 hw->sync = shifter.syncmode & 0x1;
 hw->xoffset = videl.xoffset & 0xf;
 hw->hht = videl.hht;
 hw->hbb = videl.hbb;
 hw->hbe = videl.hbe;
 hw->hdb = videl.hdb;
 hw->hde = videl.hde;
 hw->hss = videl.hss;
 hw->vft = videl.vft;
 hw->vbb = videl.vbb;
 hw->vbe = videl.vbe;
 hw->vdb = videl.vdb;
 hw->vde = videl.vde;
 hw->vss = videl.vss;

 addr = (shifter.bas_hi & 0xff) << 16 |
        (shifter.bas_md & 0xff) << 8 |
        (shifter.bas_lo & 0xff);
 par->screen_base = phys_to_virt(addr);


 hw->ste_mode = (hw->f_shift & 0x510) == 0 && hw->st_shift == 0x100;
 hw->mono = (hw->f_shift & 0x400) ||
            ((hw->f_shift & 0x510) == 0 && hw->st_shift == 0x200);
}
