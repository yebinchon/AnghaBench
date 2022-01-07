
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* SetStartAddress ) (TYPE_2__*,unsigned int) ;} ;
struct riva_par {TYPE_2__ riva; } ;
struct fb_var_screeninfo {unsigned int yoffset; unsigned int xoffset; } ;
struct TYPE_3__ {unsigned int line_length; } ;
struct fb_info {TYPE_1__ fix; struct riva_par* par; } ;


 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;
 int stub1 (TYPE_2__*,unsigned int) ;

__attribute__((used)) static int rivafb_pan_display(struct fb_var_screeninfo *var,
         struct fb_info *info)
{
 struct riva_par *par = info->par;
 unsigned int base;

 NVTRACE_ENTER();
 base = var->yoffset * info->fix.line_length + var->xoffset;
 par->riva.SetStartAddress(&par->riva, base);
 NVTRACE_LEAVE();
 return 0;
}
