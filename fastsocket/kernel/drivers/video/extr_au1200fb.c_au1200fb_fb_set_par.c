
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct au1200fb_device {int dummy; } ;


 int au1200_setmode (struct au1200fb_device*) ;
 int au1200fb_update_fbinfo (struct fb_info*) ;

__attribute__((used)) static int au1200fb_fb_set_par(struct fb_info *fbi)
{
 struct au1200fb_device *fbdev = (struct au1200fb_device *)fbi;

 au1200fb_update_fbinfo(fbi);
 au1200_setmode(fbdev);

 return 0;
}
