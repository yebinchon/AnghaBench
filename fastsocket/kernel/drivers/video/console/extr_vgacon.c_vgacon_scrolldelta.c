
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_visible_origin; int vc_origin; int vc_size_row; int vc_scr_end; } ;


 int vga_rolled_over ;
 int vga_set_mem_top (struct vc_data*) ;
 int vga_vram_base ;
 int vga_vram_size ;

__attribute__((used)) static int vgacon_scrolldelta(struct vc_data *c, int lines)
{
 if (!lines)
  c->vc_visible_origin = c->vc_origin;
 else {
  int margin = c->vc_size_row * 4;
  int ul, we, p, st;

  if (vga_rolled_over >
      (c->vc_scr_end - vga_vram_base) + margin) {
   ul = c->vc_scr_end - vga_vram_base;
   we = vga_rolled_over + c->vc_size_row;
  } else {
   ul = 0;
   we = vga_vram_size;
  }
  p = (c->vc_visible_origin - vga_vram_base - ul + we) % we +
      lines * c->vc_size_row;
  st = (c->vc_origin - vga_vram_base - ul + we) % we;
  if (st < 2 * margin)
   margin = 0;
  if (p < margin)
   p = 0;
  if (p > st - margin)
   p = st;
  c->vc_visible_origin = vga_vram_base + (p + ul) % we;
 }
 vga_set_mem_top(c);
 return 1;
}
