
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct TYPE_2__ {int fb_info; } ;


 int CONFIG_FB_AU1200_DEVS ;
 TYPE_1__* _au1200fb_devices ;
 int printk (char*) ;

__attribute__((used)) static int fbinfo2index (struct fb_info *fb_info)
{
 int i;

 for (i = 0; i < CONFIG_FB_AU1200_DEVS; ++i) {
  if (fb_info == (struct fb_info *)(&_au1200fb_devices[i].fb_info))
   return i;
 }
 printk("au1200fb: ERROR: fbinfo2index failed!\n");
 return -1;
}
