
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct fbcon_ops {size_t currcon; } ;
struct fb_info {struct fbcon_ops* fbcon_par; } ;
struct TYPE_2__ {struct vc_data* d; } ;


 int update_screen (struct vc_data*) ;
 TYPE_1__* vc_cons ;

__attribute__((used)) static void fbcon_resumed(struct fb_info *info)
{
 struct vc_data *vc;
 struct fbcon_ops *ops = info->fbcon_par;

 if (!ops || ops->currcon < 0)
  return;
 vc = vc_cons[ops->currcon].d;

 update_screen(vc);
}
