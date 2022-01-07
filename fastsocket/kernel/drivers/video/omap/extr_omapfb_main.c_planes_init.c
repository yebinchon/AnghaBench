
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int out_height; int out_width; int mirror; } ;
struct omapfb_plane_struct {int idx; TYPE_2__ info; struct omapfb_device* fbdev; } ;
struct TYPE_4__ {int region_cnt; } ;
struct omapfb_device {struct fb_info** fb_info; int dev; TYPE_1__ mem_desc; } ;
struct TYPE_6__ {int yres; int xres; } ;
struct fb_info {TYPE_3__ var; struct omapfb_plane_struct* par; } ;


 int ENOMEM ;
 int def_mirror ;
 int dev_err (int ,char*) ;
 int fbinfo_init (struct omapfb_device*,struct fb_info*) ;
 struct fb_info* framebuffer_alloc (int,int ) ;
 int framebuffer_release (struct fb_info*) ;
 int planes_cleanup (struct omapfb_device*) ;

__attribute__((used)) static int planes_init(struct omapfb_device *fbdev)
{
 struct fb_info *fbi;
 int i;
 int r;

 for (i = 0; i < fbdev->mem_desc.region_cnt; i++) {
  struct omapfb_plane_struct *plane;
  fbi = framebuffer_alloc(sizeof(struct omapfb_plane_struct),
     fbdev->dev);
  if (fbi == ((void*)0)) {
   dev_err(fbdev->dev,
    "unable to allocate memory for plane info\n");
   planes_cleanup(fbdev);
   return -ENOMEM;
  }
  plane = fbi->par;
  plane->idx = i;
  plane->fbdev = fbdev;
  plane->info.mirror = def_mirror;
  fbdev->fb_info[i] = fbi;

  if ((r = fbinfo_init(fbdev, fbi)) < 0) {
   framebuffer_release(fbi);
   planes_cleanup(fbdev);
   return r;
  }
  plane->info.out_width = fbi->var.xres;
  plane->info.out_height = fbi->var.yres;
 }
 return 0;
}
