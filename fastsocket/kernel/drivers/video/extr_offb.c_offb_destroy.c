
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int aperture_size; int aperture_base; scalar_t__ screen_base; } ;


 int framebuffer_release (struct fb_info*) ;
 int iounmap (scalar_t__) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void offb_destroy(struct fb_info *info)
{
 if (info->screen_base)
  iounmap(info->screen_base);
 release_mem_region(info->aperture_base, info->aperture_size);
 framebuffer_release(info);
}
