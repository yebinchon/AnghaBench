
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct vc_data {size_t vc_num; int* vc_palette; } ;
struct fb_info {int fix; int var; } ;
struct TYPE_4__ {int len; scalar_t__ start; } ;


 int CON_IS_VISIBLE (struct vc_data*) ;
 int EINVAL ;
 size_t* con2fb_map ;
 int fb_copy_cmap (int ,TYPE_1__*) ;
 int fb_default_cmap (int) ;
 int fb_get_color_depth (int *,int *) ;
 int fb_set_cmap (TYPE_1__*,struct fb_info*) ;
 scalar_t__ fbcon_is_inactive (struct vc_data*,struct fb_info*) ;
 int* palette_blue ;
 TYPE_1__ palette_cmap ;
 int* palette_green ;
 int* palette_red ;
 struct fb_info** registered_fb ;

__attribute__((used)) static int fbcon_set_palette(struct vc_data *vc, unsigned char *table)
{
 struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
 int i, j, k, depth;
 u8 val;

 if (fbcon_is_inactive(vc, info))
  return -EINVAL;

 if (!CON_IS_VISIBLE(vc))
  return 0;

 depth = fb_get_color_depth(&info->var, &info->fix);
 if (depth > 3) {
  for (i = j = 0; i < 16; i++) {
   k = table[i];
   val = vc->vc_palette[j++];
   palette_red[k] = (val << 8) | val;
   val = vc->vc_palette[j++];
   palette_green[k] = (val << 8) | val;
   val = vc->vc_palette[j++];
   palette_blue[k] = (val << 8) | val;
  }
  palette_cmap.len = 16;
  palette_cmap.start = 0;




 } else
  fb_copy_cmap(fb_default_cmap(1 << depth), &palette_cmap);

 return fb_set_cmap(&palette_cmap, info);
}
