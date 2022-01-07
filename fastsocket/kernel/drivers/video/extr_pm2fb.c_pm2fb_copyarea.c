
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pm2fb_par {int dummy; } ;
struct TYPE_2__ {scalar_t__ xres_virtual; scalar_t__ yres_virtual; } ;
struct fb_info {scalar_t__ state; int flags; TYPE_1__ var; struct pm2fb_par* par; } ;
struct fb_copyarea {scalar_t__ width; scalar_t__ height; scalar_t__ sx; scalar_t__ sy; scalar_t__ dx; scalar_t__ dy; } ;


 int FBINFO_HWACCEL_DISABLED ;
 scalar_t__ FBINFO_STATE_RUNNING ;
 int PM2F_CONFIG_FB_READ_SOURCE_ENABLE ;
 int PM2F_CONFIG_FB_WRITE_ENABLE ;
 int PM2F_INCREASE_X ;
 int PM2F_INCREASE_Y ;
 int PM2F_RENDER_RECTANGLE ;
 int PM2R_CONFIG ;
 int PM2R_FB_SOURCE_DELTA ;
 int PM2R_RECTANGLE_ORIGIN ;
 int PM2R_RECTANGLE_SIZE ;
 int PM2R_RENDER ;
 int WAIT_FIFO (struct pm2fb_par*,int) ;
 int cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int memcpy (struct fb_copyarea*,struct fb_copyarea const*,int) ;
 int pm2_WR (struct pm2fb_par*,int ,int) ;
 int wmb () ;

__attribute__((used)) static void pm2fb_copyarea(struct fb_info *info,
    const struct fb_copyarea *area)
{
 struct pm2fb_par *par = info->par;
 struct fb_copyarea modded;
 u32 vxres, vyres;

 if (info->state != FBINFO_STATE_RUNNING)
  return;
 if (info->flags & FBINFO_HWACCEL_DISABLED) {
  cfb_copyarea(info, area);
  return;
 }

 memcpy(&modded, area, sizeof(struct fb_copyarea));

 vxres = info->var.xres_virtual;
 vyres = info->var.yres_virtual;

 if (!modded.width || !modded.height ||
     modded.sx >= vxres || modded.sy >= vyres ||
     modded.dx >= vxres || modded.dy >= vyres)
  return;

 if (modded.sx + modded.width > vxres)
  modded.width = vxres - modded.sx;
 if (modded.dx + modded.width > vxres)
  modded.width = vxres - modded.dx;
 if (modded.sy + modded.height > vyres)
  modded.height = vyres - modded.sy;
 if (modded.dy + modded.height > vyres)
  modded.height = vyres - modded.dy;

 WAIT_FIFO(par, 5);
 pm2_WR(par, PM2R_CONFIG, PM2F_CONFIG_FB_WRITE_ENABLE |
  PM2F_CONFIG_FB_READ_SOURCE_ENABLE);
 pm2_WR(par, PM2R_FB_SOURCE_DELTA,
   ((modded.sy - modded.dy) & 0xfff) << 16 |
   ((modded.sx - modded.dx) & 0xfff));
 pm2_WR(par, PM2R_RECTANGLE_ORIGIN, (modded.dy << 16) | modded.dx);
 pm2_WR(par, PM2R_RECTANGLE_SIZE, (modded.height << 16) | modded.width);
 wmb();
 pm2_WR(par, PM2R_RENDER, PM2F_RENDER_RECTANGLE |
    (modded.dx < modded.sx ? PM2F_INCREASE_X : 0) |
    (modded.dy < modded.sy ? PM2F_INCREASE_Y : 0));
}
