
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct fb_info {int par; } ;


 int hecubafb_dpy_update (int ) ;

__attribute__((used)) static void hecubafb_dpy_deferred_io(struct fb_info *info,
    struct list_head *pagelist)
{
 hecubafb_dpy_update(info->par);
}
