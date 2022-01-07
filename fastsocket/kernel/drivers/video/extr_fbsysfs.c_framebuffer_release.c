
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int kfree (struct fb_info*) ;

void framebuffer_release(struct fb_info *info)
{
 kfree(info);
}
