
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int visual; } ;
struct TYPE_4__ {int cmap; TYPE_1__ fix; } ;
struct sa1100fb_info {int palette_size; TYPE_2__ fb; } ;
struct fb_info {int dummy; } ;


 int C_DISABLE ;
 int C_ENABLE ;
 int DPRINTK (char*,int) ;





 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_STATIC_PSEUDOCOLOR ;
 int fb_set_cmap (int *,struct fb_info*) ;
 int sa1100fb_schedule_work (struct sa1100fb_info*,int ) ;
 int sa1100fb_setpalettereg (int,int ,int ,int ,int ,struct fb_info*) ;

__attribute__((used)) static int sa1100fb_blank(int blank, struct fb_info *info)
{
 struct sa1100fb_info *fbi = (struct sa1100fb_info *)info;
 int i;

 DPRINTK("sa1100fb_blank: blank=%d\n", blank);

 switch (blank) {
 case 130:
 case 128:
 case 132:
 case 131:
  if (fbi->fb.fix.visual == FB_VISUAL_PSEUDOCOLOR ||
      fbi->fb.fix.visual == FB_VISUAL_STATIC_PSEUDOCOLOR)
   for (i = 0; i < fbi->palette_size; i++)
    sa1100fb_setpalettereg(i, 0, 0, 0, 0, info);
  sa1100fb_schedule_work(fbi, C_DISABLE);
  break;

 case 129:
  if (fbi->fb.fix.visual == FB_VISUAL_PSEUDOCOLOR ||
      fbi->fb.fix.visual == FB_VISUAL_STATIC_PSEUDOCOLOR)
   fb_set_cmap(&fbi->fb.cmap, info);
  sa1100fb_schedule_work(fbi, C_ENABLE);
 }
 return 0;
}
