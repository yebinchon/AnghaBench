
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_plane_info {int dummy; } ;
struct omapfb_plane_struct {struct omapfb_plane_info info; } ;
struct fb_info {struct omapfb_plane_struct* par; } ;



__attribute__((used)) static int omapfb_query_plane(struct fb_info *fbi, struct omapfb_plane_info *pi)
{
 struct omapfb_plane_struct *plane = fbi->par;

 *pi = plane->info;
 return 0;
}
