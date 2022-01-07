
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; } ;
struct vc_data {scalar_t__ vc_mode; int vc_pos; int vc_cursor_type; TYPE_1__ vc_font; int vc_x; } ;
 scalar_t__ KD_TEXT ;
 int VIDEO_TYPE_VGAC ;
 int vga_video_type ;
 int vga_vram_base ;
 int vgacon_restore_screen (struct vc_data*) ;
 int vgacon_set_cursor_size (int ,int,int) ;
 int write_vga (int,int) ;

__attribute__((used)) static void vgacon_cursor(struct vc_data *c, int mode)
{
 if (c->vc_mode != KD_TEXT)
  return;

 vgacon_restore_screen(c);

 switch (mode) {
 case 134:
  write_vga(14, (c->vc_pos - vga_vram_base) / 2);
         if (vga_video_type >= VIDEO_TYPE_VGAC)
   vgacon_set_cursor_size(c->vc_x, 31, 30);
  else
   vgacon_set_cursor_size(c->vc_x, 31, 31);
  break;

 case 133:
 case 135:
  write_vga(14, (c->vc_pos - vga_vram_base) / 2);
  switch (c->vc_cursor_type & 0x0f) {
  case 128:
   vgacon_set_cursor_size(c->vc_x,
            c->vc_font.height -
            (c->vc_font.height <
      10 ? 2 : 3),
            c->vc_font.height -
            (c->vc_font.height <
      10 ? 1 : 2));
   break;
  case 129:
   vgacon_set_cursor_size(c->vc_x,
            c->vc_font.height / 3,
            c->vc_font.height -
            (c->vc_font.height <
      10 ? 1 : 2));
   break;
  case 131:
   vgacon_set_cursor_size(c->vc_x,
            (c->vc_font.height * 2) / 3,
            c->vc_font.height -
            (c->vc_font.height <
      10 ? 1 : 2));
   break;
  case 132:
   vgacon_set_cursor_size(c->vc_x,
            c->vc_font.height / 2,
            c->vc_font.height -
            (c->vc_font.height <
      10 ? 1 : 2));
   break;
  case 130:
   if (vga_video_type >= VIDEO_TYPE_VGAC)
    vgacon_set_cursor_size(c->vc_x, 31, 30);
   else
    vgacon_set_cursor_size(c->vc_x, 31, 31);
   break;
  default:
   vgacon_set_cursor_size(c->vc_x, 1,
            c->vc_font.height);
   break;
  }
  break;
 }
}
