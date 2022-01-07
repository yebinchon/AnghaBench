
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_var_screeninfo {int dummy; } ;
struct TYPE_2__ {int var; } ;
struct cfb_info {TYPE_1__ fb; } ;


 int memcpy (struct fb_var_screeninfo*,int *,int) ;

void cyber2000fb_get_fb_var(struct cfb_info *cfb, struct fb_var_screeninfo *var)
{
 memcpy(var, &cfb->fb.var, sizeof(struct fb_var_screeninfo));
}
