
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s3c_fb_win {unsigned int index; struct s3c_fb* parent; } ;
struct s3c_fb {int enabled; scalar_t__ regs; int dev; } ;
struct fb_info {struct s3c_fb_win* par; } ;







 scalar_t__ WINCON (unsigned int) ;
 int WINCONx_ENWIN ;
 scalar_t__ WINxMAP (unsigned int) ;
 int WINxMAP_MAP ;
 int WINxMAP_MAP_COLOUR (int) ;
 int dev_dbg (int ,char*,int) ;
 int readl (scalar_t__) ;
 int s3c_fb_enable (struct s3c_fb*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int s3c_fb_blank(int blank_mode, struct fb_info *info)
{
 struct s3c_fb_win *win = info->par;
 struct s3c_fb *sfb = win->parent;
 unsigned int index = win->index;
 u32 wincon;

 dev_dbg(sfb->dev, "blank mode %d\n", blank_mode);

 wincon = readl(sfb->regs + WINCON(index));

 switch (blank_mode) {
 case 130:
  wincon &= ~WINCONx_ENWIN;
  sfb->enabled &= ~(1 << index);


 case 131:

  writel(WINxMAP_MAP | WINxMAP_MAP_COLOUR(0x0),
         sfb->regs + WINxMAP(index));
  break;

 case 129:
  writel(0x0, sfb->regs + WINxMAP(index));
  wincon |= WINCONx_ENWIN;
  sfb->enabled |= (1 << index);
  break;

 case 128:
 case 132:
 default:
  return 1;
 }

 writel(wincon, sfb->regs + WINCON(index));
 if (index == 0)
  s3c_fb_enable(sfb, blank_mode != 130 ? 1 : 0);

 return 0;
}
