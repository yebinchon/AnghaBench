
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int node; } ;







 int pr_debug (char*,int ) ;
 int svga_wcrt_mask (int,int,int) ;
 int svga_wseq_mask (int,int,int) ;

__attribute__((used)) static int arkfb_blank(int blank_mode, struct fb_info *info)
{
 switch (blank_mode) {
 case 129:
  pr_debug("fb%d: unblank\n", info->node);
  svga_wseq_mask(0x01, 0x00, 0x20);
  svga_wcrt_mask(0x17, 0x80, 0x80);
  break;
 case 131:
  pr_debug("fb%d: blank\n", info->node);
  svga_wseq_mask(0x01, 0x20, 0x20);
  svga_wcrt_mask(0x17, 0x80, 0x80);
  break;
 case 130:
 case 132:
 case 128:
  pr_debug("fb%d: sync down\n", info->node);
  svga_wseq_mask(0x01, 0x20, 0x20);
  svga_wcrt_mask(0x17, 0x00, 0x80);
  break;
 }
 return 0;
}
