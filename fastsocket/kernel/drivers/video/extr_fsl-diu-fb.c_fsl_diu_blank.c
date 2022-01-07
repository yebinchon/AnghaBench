
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfb_info {int blank; } ;
struct fb_info {struct mfb_info* par; } ;
__attribute__((used)) static int fsl_diu_blank(int blank_mode, struct fb_info *info)
{
 struct mfb_info *mfbi = info->par;

 mfbi->blank = blank_mode;

 switch (blank_mode) {
 case 128:
 case 132:

 case 131:

  break;
 case 130:

  break;
 case 129:

  break;
 }

 return 0;
}
