
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_uni_pagedir; int * vc_uni_pagedir_loc; int vc_visible_origin; } ;


 scalar_t__ CON_IS_VISIBLE (struct vc_data*) ;
 int con_free_unimap (struct vc_data*) ;
 int con_set_default_unimap (struct vc_data*) ;
 int vga_set_mem_top (struct vc_data*) ;
 int vga_vram_base ;
 int * vgacon_uni_pagedir ;

__attribute__((used)) static void vgacon_deinit(struct vc_data *c)
{

 if (CON_IS_VISIBLE(c)) {
  c->vc_visible_origin = vga_vram_base;
  vga_set_mem_top(c);
 }

 if (!--vgacon_uni_pagedir[1])
  con_free_unimap(c);
 c->vc_uni_pagedir_loc = &c->vc_uni_pagedir;
 con_set_default_unimap(c);
}
