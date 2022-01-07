
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ffb_par {int flags; int board_type; } ;
struct TYPE_2__ {int line_length; int accel; int visual; int type; int id; } ;
struct fb_info {TYPE_1__ fix; scalar_t__ par; } ;


 int FB_ACCEL_SUN_CREATOR ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_TRUECOLOR ;
 int FFB_FLAG_AFB ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void ffb_init_fix(struct fb_info *info)
{
 struct ffb_par *par = (struct ffb_par *)info->par;
 const char *ffb_type_name;

 if (!(par->flags & FFB_FLAG_AFB)) {
  if ((par->board_type & 0x7) == 0x3)
   ffb_type_name = "Creator 3D";
  else
   ffb_type_name = "Creator";
 } else
  ffb_type_name = "Elite 3D";

 strlcpy(info->fix.id, ffb_type_name, sizeof(info->fix.id));

 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.visual = FB_VISUAL_TRUECOLOR;


 info->fix.line_length = 8192;

 info->fix.accel = FB_ACCEL_SUN_CREATOR;
}
