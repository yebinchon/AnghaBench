
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {size_t vc_num; } ;
struct fbcon_ops {int (* clear_margins ) (struct vc_data*,struct fb_info*,int) ;} ;
struct fb_info {struct fbcon_ops* fbcon_par; } ;


 size_t* con2fb_map ;
 int fbcon_is_inactive (struct vc_data*,struct fb_info*) ;
 struct fb_info** registered_fb ;
 int stub1 (struct vc_data*,struct fb_info*,int) ;

__attribute__((used)) static void fbcon_clear_margins(struct vc_data *vc, int bottom_only)
{
 struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
 struct fbcon_ops *ops = info->fbcon_par;

 if (!fbcon_is_inactive(vc, info))
  ops->clear_margins(vc, info, bottom_only);
}
