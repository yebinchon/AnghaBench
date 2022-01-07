
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int visual; } ;
struct TYPE_4__ {int cmap; TYPE_1__ fix; } ;
struct pxafb_info {int palette_size; TYPE_2__ fb; } ;
struct fb_info {int dummy; } ;


 int C_DISABLE ;
 int C_ENABLE ;





 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_STATIC_PSEUDOCOLOR ;
 int fb_set_cmap (int *,struct fb_info*) ;
 int pxafb_schedule_work (struct pxafb_info*,int ) ;
 int pxafb_setpalettereg (int,int ,int ,int ,int ,struct fb_info*) ;

__attribute__((used)) static int pxafb_blank(int blank, struct fb_info *info)
{
 struct pxafb_info *fbi = (struct pxafb_info *)info;
 int i;

 switch (blank) {
 case 130:
 case 128:
 case 132:
 case 131:
  if (fbi->fb.fix.visual == FB_VISUAL_PSEUDOCOLOR ||
      fbi->fb.fix.visual == FB_VISUAL_STATIC_PSEUDOCOLOR)
   for (i = 0; i < fbi->palette_size; i++)
    pxafb_setpalettereg(i, 0, 0, 0, 0, info);

  pxafb_schedule_work(fbi, C_DISABLE);

  break;

 case 129:

  if (fbi->fb.fix.visual == FB_VISUAL_PSEUDOCOLOR ||
      fbi->fb.fix.visual == FB_VISUAL_STATIC_PSEUDOCOLOR)
   fb_set_cmap(&fbi->fb.cmap, info);
  pxafb_schedule_work(fbi, C_ENABLE);
 }
 return 0;
}
