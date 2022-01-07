
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i810fb_par {int use_count; int open_lock; int state; } ;
struct fb_info {struct i810fb_par* par; } ;


 int EINVAL ;
 int i810_restore_vga_state (struct i810fb_par*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int restore_vga (int *) ;

__attribute__((used)) static int i810fb_release(struct fb_info *info, int user)
{
 struct i810fb_par *par = info->par;

 mutex_lock(&par->open_lock);
 if (par->use_count == 0) {
  mutex_unlock(&par->open_lock);
  return -EINVAL;
 }

 if (par->use_count == 1) {
  i810_restore_vga_state(par);
  restore_vga(&par->state);
 }

 par->use_count--;
 mutex_unlock(&par->open_lock);

 return 0;
}
