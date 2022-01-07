
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ smem_len; scalar_t__ smem_start; } ;
struct fb_info {int mm_lock; TYPE_1__ fix; scalar_t__ screen_base; int device; } ;


 int dma_free_writecombine (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mx3fb_unmap_video_memory(struct fb_info *fbi)
{
 dma_free_writecombine(fbi->device, fbi->fix.smem_len,
         fbi->screen_base, fbi->fix.smem_start);

 fbi->screen_base = 0;
 mutex_lock(&fbi->mm_lock);
 fbi->fix.smem_start = 0;
 fbi->fix.smem_len = 0;
 mutex_unlock(&fbi->mm_lock);
 return 0;
}
