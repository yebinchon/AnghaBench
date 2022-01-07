
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__ vc_mode; } ;
struct fbcon_ops {scalar_t__ graphics; } ;
struct fb_info {scalar_t__ state; struct fbcon_ops* fbcon_par; } ;


 scalar_t__ FBINFO_STATE_RUNNING ;
 scalar_t__ KD_TEXT ;
 int vt_force_oops_output (struct vc_data*) ;

__attribute__((used)) static inline int fbcon_is_inactive(struct vc_data *vc, struct fb_info *info)
{
 struct fbcon_ops *ops = info->fbcon_par;

 return (info->state != FBINFO_STATE_RUNNING ||
  vc->vc_mode != KD_TEXT || ops->graphics) &&
  !vt_force_oops_output(vc);
}
