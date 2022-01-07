
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int node; } ;







 int pr_debug (char*,int ) ;
 int svga_wcrt_mask (int,int,int) ;
 int svga_wseq_mask (int,int,int) ;

__attribute__((used)) static int vt8623fb_blank(int blank_mode, struct fb_info *info)
{
 switch (blank_mode) {
 case 129:
  pr_debug("fb%d: unblank\n", info->node);
  svga_wcrt_mask(0x36, 0x00, 0x30);
  svga_wseq_mask(0x01, 0x00, 0x20);
  break;
 case 131:
  pr_debug("fb%d: blank\n", info->node);
  svga_wcrt_mask(0x36, 0x00, 0x30);
  svga_wseq_mask(0x01, 0x20, 0x20);
  break;
 case 132:
  pr_debug("fb%d: DPMS standby (hsync off)\n", info->node);
  svga_wcrt_mask(0x36, 0x10, 0x30);
  svga_wseq_mask(0x01, 0x20, 0x20);
  break;
 case 128:
  pr_debug("fb%d: DPMS suspend (vsync off)\n", info->node);
  svga_wcrt_mask(0x36, 0x20, 0x30);
  svga_wseq_mask(0x01, 0x20, 0x20);
  break;
 case 130:
  pr_debug("fb%d: DPMS off (no sync)\n", info->node);
  svga_wcrt_mask(0x36, 0x30, 0x30);
  svga_wseq_mask(0x01, 0x20, 0x20);
  break;
 }

 return 0;
}
