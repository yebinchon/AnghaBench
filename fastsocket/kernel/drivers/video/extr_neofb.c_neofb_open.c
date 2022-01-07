
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vgastate {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct neofb_par {int ref_count; TYPE_1__ state; } ;
struct fb_info {struct neofb_par* par; } ;


 int VGA_SAVE_FONTS ;
 int VGA_SAVE_MODE ;
 int memset (TYPE_1__*,int ,int) ;
 int save_vga (TYPE_1__*) ;

__attribute__((used)) static int
neofb_open(struct fb_info *info, int user)
{
 struct neofb_par *par = info->par;

 if (!par->ref_count) {
  memset(&par->state, 0, sizeof(struct vgastate));
  par->state.flags = VGA_SAVE_MODE | VGA_SAVE_FONTS;
  save_vga(&par->state);
 }
 par->ref_count++;

 return 0;
}
