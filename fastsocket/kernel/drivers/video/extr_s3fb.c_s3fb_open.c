
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vgastate {int dummy; } ;
struct TYPE_3__ {int flags; int num_crtc; int num_seq; } ;
struct s3fb_info {scalar_t__ ref_count; int open_lock; TYPE_1__ state; } ;
struct fb_info {struct s3fb_info* par; } ;


 int VGA_SAVE_CMAP ;
 int VGA_SAVE_FONTS ;
 int VGA_SAVE_MODE ;
 int memset (TYPE_1__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int save_vga (TYPE_1__*) ;

__attribute__((used)) static int s3fb_open(struct fb_info *info, int user)
{
 struct s3fb_info *par = info->par;

 mutex_lock(&(par->open_lock));
 if (par->ref_count == 0) {
  memset(&(par->state), 0, sizeof(struct vgastate));
  par->state.flags = VGA_SAVE_MODE | VGA_SAVE_FONTS | VGA_SAVE_CMAP;
  par->state.num_crtc = 0x70;
  par->state.num_seq = 0x20;
  save_vga(&(par->state));
 }

 par->ref_count++;
 mutex_unlock(&(par->open_lock));

 return 0;
}
