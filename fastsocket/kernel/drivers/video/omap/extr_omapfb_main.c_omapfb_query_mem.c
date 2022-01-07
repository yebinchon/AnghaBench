
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_plane_struct {size_t idx; struct omapfb_device* fbdev; } ;
struct omapfb_mem_region {int type; int size; } ;
struct omapfb_mem_info {int type; int size; } ;
struct TYPE_2__ {struct omapfb_mem_region* region; } ;
struct omapfb_device {TYPE_1__ mem_desc; } ;
struct fb_info {struct omapfb_plane_struct* par; } ;


 int memset (struct omapfb_mem_info*,int ,int) ;

__attribute__((used)) static int omapfb_query_mem(struct fb_info *fbi, struct omapfb_mem_info *mi)
{
 struct omapfb_plane_struct *plane = fbi->par;
 struct omapfb_device *fbdev = plane->fbdev;
 struct omapfb_mem_region *rg;

 rg = &fbdev->mem_desc.region[plane->idx];
 memset(mi, 0, sizeof(*mi));
 mi->size = rg->size;
 mi->type = rg->type;

 return 0;
}
