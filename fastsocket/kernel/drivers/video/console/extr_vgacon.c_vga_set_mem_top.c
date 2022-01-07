
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_visible_origin; } ;


 int vga_vram_base ;
 int write_vga (int,int) ;

__attribute__((used)) static inline void vga_set_mem_top(struct vc_data *c)
{
 write_vga(12, (c->vc_visible_origin - vga_vram_base) / 2);
}
