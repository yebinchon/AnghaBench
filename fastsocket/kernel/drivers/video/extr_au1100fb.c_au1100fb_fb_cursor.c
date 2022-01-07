
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_cursor {int dummy; } ;


 int EINVAL ;
 scalar_t__ nocursor ;

int au1100fb_fb_cursor(struct fb_info *info, struct fb_cursor *cursor)
{
 if (nocursor)
  return 0;
 else
  return -EINVAL;
}
