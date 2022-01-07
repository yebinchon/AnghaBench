
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vgastate {int dummy; } ;
struct TYPE_3__ {int vgabase; int flags; } ;
struct i810fb_par {scalar_t__ use_count; int open_lock; TYPE_1__ state; int mmio_start_virtual; } ;
struct fb_info {struct i810fb_par* par; } ;


 int VGA_SAVE_CMAP ;
 int i810_save_vga_state (struct i810fb_par*) ;
 int memset (TYPE_1__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int save_vga (TYPE_1__*) ;

__attribute__((used)) static int i810fb_open(struct fb_info *info, int user)
{
 struct i810fb_par *par = info->par;

 mutex_lock(&par->open_lock);
 if (par->use_count == 0) {
  memset(&par->state, 0, sizeof(struct vgastate));
  par->state.flags = VGA_SAVE_CMAP;
  par->state.vgabase = par->mmio_start_virtual;
  save_vga(&par->state);

  i810_save_vga_state(par);
 }

 par->use_count++;
 mutex_unlock(&par->open_lock);

 return 0;
}
