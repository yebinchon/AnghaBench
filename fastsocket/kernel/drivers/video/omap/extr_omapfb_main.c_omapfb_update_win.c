
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_update_window {int dummy; } ;
struct omapfb_plane_struct {int fbdev; } ;
struct fb_info {struct omapfb_plane_struct* par; } ;


 int omapfb_rqueue_lock (int ) ;
 int omapfb_rqueue_unlock (int ) ;
 int omapfb_update_window_async (struct fb_info*,struct omapfb_update_window*,int *,int *) ;

__attribute__((used)) static int omapfb_update_win(struct fb_info *fbi,
    struct omapfb_update_window *win)
{
 struct omapfb_plane_struct *plane = fbi->par;
 int ret;

 omapfb_rqueue_lock(plane->fbdev);
 ret = omapfb_update_window_async(fbi, win, ((void*)0), ((void*)0));
 omapfb_rqueue_unlock(plane->fbdev);

 return ret;
}
