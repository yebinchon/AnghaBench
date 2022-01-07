
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeonfb_info {int dummy; } ;
struct fb_info {scalar_t__ state; struct radeonfb_info* par; } ;


 scalar_t__ FBINFO_STATE_RUNNING ;
 int radeon_engine_idle () ;

int radeonfb_sync(struct fb_info *info)
{
 struct radeonfb_info *rinfo = info->par;

 if (info->state != FBINFO_STATE_RUNNING)
  return 0;
 radeon_engine_idle();

 return 0;
}
