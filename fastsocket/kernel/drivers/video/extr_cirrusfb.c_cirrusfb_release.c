
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int par; } ;


 scalar_t__ opencount ;
 int switch_monitor (int ,int ) ;

__attribute__((used)) static int cirrusfb_release(struct fb_info *info, int user)
{
 if (--opencount == 0)
  switch_monitor(info->par, 0);
 return 0;
}
