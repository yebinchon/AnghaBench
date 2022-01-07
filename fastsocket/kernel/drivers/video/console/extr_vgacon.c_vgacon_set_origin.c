
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_visible_origin; int vc_origin; } ;


 scalar_t__ console_blanked ;
 scalar_t__ vga_is_gfx ;
 int vga_palette_blanked ;
 scalar_t__ vga_rolled_over ;
 int vga_set_mem_top (struct vc_data*) ;
 int vga_vram_base ;

__attribute__((used)) static int vgacon_set_origin(struct vc_data *c)
{
 if (vga_is_gfx ||
     (console_blanked && !vga_palette_blanked))
  return 0;
 c->vc_origin = c->vc_visible_origin = vga_vram_base;
 vga_set_mem_top(c);
 vga_rolled_over = 0;
 return 1;
}
