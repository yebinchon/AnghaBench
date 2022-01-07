
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int smem_start; int smem_len; } ;
struct fb_info {TYPE_1__ fix; int screen_base; int device; } ;
struct atmel_lcdfb_info {struct fb_info* info; } ;


 int dma_free_writecombine (int ,int ,int ,int ) ;

__attribute__((used)) static inline void atmel_lcdfb_free_video_memory(struct atmel_lcdfb_info *sinfo)
{
 struct fb_info *info = sinfo->info;

 dma_free_writecombine(info->device, info->fix.smem_len,
    info->screen_base, info->fix.smem_start);
}
