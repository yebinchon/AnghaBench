
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int cmap; } ;


 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int mx3fb_unmap_video_memory (struct fb_info*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void release_fbi(struct fb_info *fbi)
{
 mx3fb_unmap_video_memory(fbi);

 fb_dealloc_cmap(&fbi->cmap);

 unregister_framebuffer(fbi);
 framebuffer_release(fbi);
}
