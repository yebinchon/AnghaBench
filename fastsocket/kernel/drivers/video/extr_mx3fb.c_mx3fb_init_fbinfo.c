
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mx3fb_info {int mutex; int pseudo_palette; scalar_t__ cur_ipu_buf; int cookie; } ;
struct fb_ops {int dummy; } ;
struct TYPE_2__ {int activate; } ;
struct fb_info {int cmap; int pseudo_palette; int flags; struct fb_ops* fbops; TYPE_1__ var; struct mx3fb_info* par; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int FBINFO_FLAG_DEFAULT ;
 int FB_ACTIVATE_NOW ;
 int fb_alloc_cmap (int *,int,int ) ;
 struct fb_info* framebuffer_alloc (int,struct device*) ;
 int framebuffer_release (struct fb_info*) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct fb_info *mx3fb_init_fbinfo(struct device *dev, struct fb_ops *ops)
{
 struct fb_info *fbi;
 struct mx3fb_info *mx3fbi;
 int ret;


 fbi = framebuffer_alloc(sizeof(struct mx3fb_info), dev);
 if (!fbi)
  return ((void*)0);

 mx3fbi = fbi->par;
 mx3fbi->cookie = -EINVAL;
 mx3fbi->cur_ipu_buf = 0;

 fbi->var.activate = FB_ACTIVATE_NOW;

 fbi->fbops = ops;
 fbi->flags = FBINFO_FLAG_DEFAULT;
 fbi->pseudo_palette = mx3fbi->pseudo_palette;

 mutex_init(&mx3fbi->mutex);


 ret = fb_alloc_cmap(&fbi->cmap, 16, 0);
 if (ret < 0) {
  framebuffer_release(fbi);
  return ((void*)0);
 }

 return fbi;
}
