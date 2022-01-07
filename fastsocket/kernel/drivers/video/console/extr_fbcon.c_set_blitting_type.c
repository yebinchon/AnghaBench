
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {size_t vc_num; } ;
struct fbcon_ops {int * p; } ;
struct fb_info {int flags; struct fbcon_ops* fbcon_par; } ;


 int FBINFO_MISC_TILEBLITTING ;
 int * fb_display ;
 int fbcon_set_bitops (struct fbcon_ops*) ;
 int fbcon_set_rotation (struct fb_info*) ;

__attribute__((used)) static void set_blitting_type(struct vc_data *vc, struct fb_info *info)
{
 struct fbcon_ops *ops = info->fbcon_par;

 info->flags &= ~FBINFO_MISC_TILEBLITTING;
 ops->p = &fb_display[vc->vc_num];
 fbcon_set_rotation(info);
 fbcon_set_bitops(ops);
}
