
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int (* wait_engine ) (struct tridentfb_par*) ;} ;
struct fb_info {int flags; struct tridentfb_par* par; } ;


 int FBINFO_HWACCEL_DISABLED ;
 int stub1 (struct tridentfb_par*) ;

__attribute__((used)) static int tridentfb_sync(struct fb_info *info)
{
 struct tridentfb_par *par = info->par;

 if (!(info->flags & FBINFO_HWACCEL_DISABLED))
  par->wait_engine(par);
 return 0;
}
