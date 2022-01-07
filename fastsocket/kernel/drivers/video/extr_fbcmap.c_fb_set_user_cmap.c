
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct fb_info {TYPE_1__* fbops; } ;
struct fb_cmap_user {int len; scalar_t__ start; int * transp; int * blue; int * green; int * red; } ;
struct fb_cmap {scalar_t__ start; int transp; int blue; int green; int red; } ;
struct TYPE_2__ {int fb_setcmap; int fb_setcolreg; } ;


 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ copy_from_user (int ,int *,int) ;
 int fb_alloc_cmap (struct fb_cmap*,int,int ) ;
 int fb_dealloc_cmap (struct fb_cmap*) ;
 int fb_set_cmap (struct fb_cmap*,struct fb_info*) ;
 int lock_fb_info (struct fb_info*) ;
 int memset (struct fb_cmap*,int ,int) ;
 int unlock_fb_info (struct fb_info*) ;

int fb_set_user_cmap(struct fb_cmap_user *cmap, struct fb_info *info)
{
 int rc, size = cmap->len * sizeof(u16);
 struct fb_cmap umap;

 memset(&umap, 0, sizeof(struct fb_cmap));
 rc = fb_alloc_cmap(&umap, cmap->len, cmap->transp != ((void*)0));
 if (rc)
  return rc;
 if (copy_from_user(umap.red, cmap->red, size) ||
     copy_from_user(umap.green, cmap->green, size) ||
     copy_from_user(umap.blue, cmap->blue, size) ||
     (cmap->transp && copy_from_user(umap.transp, cmap->transp, size))) {
  rc = -EFAULT;
  goto out;
 }
 umap.start = cmap->start;
 if (!lock_fb_info(info)) {
  rc = -ENODEV;
  goto out;
 }
 if (cmap->start < 0 || (!info->fbops->fb_setcolreg &&
    !info->fbops->fb_setcmap)) {
  rc = -EINVAL;
  goto out1;
 }
 rc = fb_set_cmap(&umap, info);
out1:
 unlock_fb_info(info);
out:
 fb_dealloc_cmap(&umap);
 return rc;
}
