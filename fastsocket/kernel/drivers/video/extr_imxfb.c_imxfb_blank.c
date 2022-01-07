
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxfb_info {int dummy; } ;
struct fb_info {struct imxfb_info* par; } ;







 int imxfb_disable_controller (struct imxfb_info*) ;
 int imxfb_enable_controller (struct imxfb_info*) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int imxfb_blank(int blank, struct fb_info *info)
{
 struct imxfb_info *fbi = info->par;

 pr_debug("imxfb_blank: blank=%d\n", blank);

 switch (blank) {
 case 130:
 case 128:
 case 132:
 case 131:
  imxfb_disable_controller(fbi);
  break;

 case 129:
  imxfb_enable_controller(fbi);
  break;
 }
 return 0;
}
