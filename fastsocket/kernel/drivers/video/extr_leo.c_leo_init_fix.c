
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_length; int accel; int visual; int type; int id; } ;
struct fb_info {TYPE_1__ fix; } ;
struct device_node {int name; } ;


 int FB_ACCEL_SUN_LEO ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_TRUECOLOR ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
leo_init_fix(struct fb_info *info, struct device_node *dp)
{
 strlcpy(info->fix.id, dp->name, sizeof(info->fix.id));

 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.visual = FB_VISUAL_TRUECOLOR;

 info->fix.line_length = 8192;

 info->fix.accel = FB_ACCEL_SUN_LEO;
}
