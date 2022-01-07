
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int smem_start; } ;
struct fb_info {TYPE_1__ fix; int screen_base; } ;


 int iounmap (int ) ;
 int release_mem_region (int ,int ) ;
 int screen_fb_size ;

__attribute__((used)) static void hvfb_putmem(struct fb_info *info)
{
 iounmap(info->screen_base);
 release_mem_region(info->fix.smem_start, screen_fb_size);
}
