
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xxx_par {int dummy; } ;
struct fb_info {struct xxx_par* par; } ;



__attribute__((used)) static int xxxfb_set_par(struct fb_info *info)
{
    struct xxx_par *par = info->par;

    return 0;
}
