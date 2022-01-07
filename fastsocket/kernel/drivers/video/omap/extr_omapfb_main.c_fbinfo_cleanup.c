
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_device {int dummy; } ;
struct fb_info {int cmap; } ;


 int fb_dealloc_cmap (int *) ;

__attribute__((used)) static void fbinfo_cleanup(struct omapfb_device *fbdev, struct fb_info *fbi)
{
 fb_dealloc_cmap(&fbi->cmap);
}
