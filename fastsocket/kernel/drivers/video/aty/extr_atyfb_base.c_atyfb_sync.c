
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {scalar_t__ par; } ;
struct atyfb_par {scalar_t__ blitter_may_be_busy; } ;


 int wait_for_idle (struct atyfb_par*) ;

__attribute__((used)) static int atyfb_sync(struct fb_info *info)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;

 if (par->blitter_may_be_busy)
  wait_for_idle(par);
 return 0;
}
