
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct falcon_hw {int sync; int vid_mode; int vid_control; int line_offset; int line_width; int xoffset; scalar_t__ f_shift; scalar_t__ st_shift; scalar_t__ ste_mode; int vss; int vde; int vdb; int vbe; int vbb; int vft; int hss; int hde; int hdb; int hbe; int hbb; int hht; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {int line_offset; int xoffset; } ;
struct TYPE_8__ {TYPE_1__ falcon; } ;
struct TYPE_12__ {TYPE_2__ hw; } ;
struct TYPE_11__ {int syncmode; } ;
struct TYPE_10__ {int off_next; int scn_width; } ;
struct TYPE_9__ {int xoffset; int mode; int control; scalar_t__ f_shift; scalar_t__ st_shift; int vss; int vde; int vdb; int vbe; int vbb; int vft; int hss; int hde; int hdb; int hbe; int hbb; int hht; } ;


 int IRQ_HANDLED ;
 TYPE_6__ current_par ;
 scalar_t__ f_change_mode ;
 struct falcon_hw f_new_mode ;
 scalar_t__ f_pan_display ;
 TYPE_5__ shifter ;
 TYPE_4__ shifter_f030 ;
 TYPE_3__ videl ;

__attribute__((used)) static irqreturn_t falcon_vbl_switcher(int irq, void *dummy)
{
 struct falcon_hw *hw = &f_new_mode;

 if (f_change_mode) {
  f_change_mode = 0;

  if (hw->sync & 0x1) {

   *(volatile unsigned short *)0xffff9202 = 0xffbf;
  } else {

   *(volatile unsigned short *)0xffff9202;
  }
  shifter.syncmode = hw->sync;

  videl.hht = hw->hht;
  videl.hbb = hw->hbb;
  videl.hbe = hw->hbe;
  videl.hdb = hw->hdb;
  videl.hde = hw->hde;
  videl.hss = hw->hss;
  videl.vft = hw->vft;
  videl.vbb = hw->vbb;
  videl.vbe = hw->vbe;
  videl.vdb = hw->vdb;
  videl.vde = hw->vde;
  videl.vss = hw->vss;

  videl.f_shift = 0;
  if (hw->ste_mode) {
   videl.st_shift = hw->st_shift;
  } else {






   videl.st_shift = 0;

   videl.f_shift = hw->f_shift;
  }

  videl.xoffset = hw->xoffset;
  shifter_f030.scn_width = hw->line_width;
  shifter_f030.off_next = hw->line_offset;
  videl.control = hw->vid_control;
  videl.mode = hw->vid_mode;
 }
 if (f_pan_display) {
  f_pan_display = 0;
  videl.xoffset = current_par.hw.falcon.xoffset;
  shifter_f030.off_next = current_par.hw.falcon.line_offset;
 }
 return IRQ_HANDLED;
}
