
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_screenbuf_size; int vc_video_erase_char; } ;


 int MDA_MODE_BLINK_EN ;
 int MDA_MODE_VIDEO_EN ;
 scalar_t__ TYPE_MDA ;
 int mda_convert_attr (int ) ;
 int mda_mode_port ;
 scalar_t__ mda_type ;
 scalar_t__ mda_vram_base ;
 int outb_p (int,int ) ;
 int scr_memsetw (void*,int ,int ) ;

__attribute__((used)) static int mdacon_blank(struct vc_data *c, int blank, int mode_switch)
{
 if (mda_type == TYPE_MDA) {
  if (blank)
   scr_memsetw((void *)mda_vram_base,
    mda_convert_attr(c->vc_video_erase_char),
    c->vc_screenbuf_size);

  return 1;
 } else {
  if (blank)
   outb_p(0x00, mda_mode_port);
  else
   outb_p(MDA_MODE_VIDEO_EN | MDA_MODE_BLINK_EN,
    mda_mode_port);
  return 0;
 }
}
