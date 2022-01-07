
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* Clip; } ;
struct riva_par {TYPE_3__ riva; } ;
struct TYPE_4__ {int xres_virtual; int yres_virtual; } ;
struct fb_info {TYPE_1__ var; struct riva_par* par; } ;
struct TYPE_5__ {int WidthHeight; int TopLeft; } ;


 int Clip ;
 int NV_WR32 (int *,int ,int) ;
 int RIVA_FIFO_FREE (TYPE_3__,int ,int) ;
 int riva_set_rop_solid (struct riva_par*,int) ;
 int wait_for_idle (struct riva_par*) ;

__attribute__((used)) static void riva_setup_accel(struct fb_info *info)
{
 struct riva_par *par = info->par;

 RIVA_FIFO_FREE(par->riva, Clip, 2);
 NV_WR32(&par->riva.Clip->TopLeft, 0, 0x0);
 NV_WR32(&par->riva.Clip->WidthHeight, 0,
  (info->var.xres_virtual & 0xffff) |
  (info->var.yres_virtual << 16));
 riva_set_rop_solid(par, 0xcc);
 wait_for_idle(par);
}
