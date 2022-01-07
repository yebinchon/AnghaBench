
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_screenbuf_size; } ;


 int BLANK ;
 int VIDEO_TYPE_VGAC ;
 int color_table ;
 int scr_memsetw (void*,int ,int ) ;
 int state ;
 int vga_is_gfx ;
 int vga_pal_blank (int *) ;
 int vga_palette_blanked ;
 int vga_set_palette (struct vc_data*,int ) ;
 int vga_vesa_blank (int *,int) ;
 int vga_vesa_blanked ;
 int vga_vesa_unblank (int *) ;
 int vga_video_type ;
 scalar_t__ vga_vram_base ;
 int vgacon_set_origin (struct vc_data*) ;

__attribute__((used)) static int vgacon_blank(struct vc_data *c, int blank, int mode_switch)
{
 switch (blank) {
 case 0:
  if (vga_vesa_blanked) {
   vga_vesa_unblank(&state);
   vga_vesa_blanked = 0;
  }
  if (vga_palette_blanked) {
   vga_set_palette(c, color_table);
   vga_palette_blanked = 0;
   return 0;
  }
  vga_is_gfx = 0;

  return 1;
 case 1:
 case -1:
  if (!mode_switch && vga_video_type == VIDEO_TYPE_VGAC) {
   vga_pal_blank(&state);
   vga_palette_blanked = 1;
   return 0;
  }
  vgacon_set_origin(c);
  scr_memsetw((void *) vga_vram_base, BLANK,
       c->vc_screenbuf_size);
  if (mode_switch)
   vga_is_gfx = 1;
  return 1;
 default:
  if (vga_video_type == VIDEO_TYPE_VGAC) {
   vga_vesa_blank(&state, blank - 1);
   vga_vesa_blanked = blank;
  }
  return 0;
 }
}
