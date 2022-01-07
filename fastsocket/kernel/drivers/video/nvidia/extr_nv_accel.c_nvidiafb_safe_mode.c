
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvidia_par {int lockup; } ;
struct TYPE_2__ {int scan_align; } ;
struct fb_info {TYPE_1__ pixmap; struct nvidia_par* par; } ;


 int touch_softlockup_watchdog () ;

__attribute__((used)) static inline void nvidiafb_safe_mode(struct fb_info *info)
{
 struct nvidia_par *par = info->par;

 touch_softlockup_watchdog();
 info->pixmap.scan_align = 1;
 par->lockup = 1;
}
