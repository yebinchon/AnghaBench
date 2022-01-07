
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int height; } ;
struct vc_data {int vc_cols; int vc_rows; scalar_t__ vc_screenbuf_size; int vc_size_row; scalar_t__ vc_screenbuf; scalar_t__ vc_origin; TYPE_1__ vc_font; } ;
struct TYPE_4__ {int orig_video_lines; int orig_video_cols; } ;


 int VGA_FONTWIDTH ;
 int scr_memcpyw (int *,int *,scalar_t__) ;
 TYPE_2__ screen_info ;
 int vga_default_font_height ;
 int vga_is_gfx ;
 int vga_video_num_columns ;
 int vga_video_num_lines ;
 scalar_t__ vga_vram_size ;
 int vgacon_doresize (struct vc_data*,int,int) ;
 int vgacon_scrollback_init (int ) ;
 int vgacon_xres ;
 int vgacon_yres ;

__attribute__((used)) static int vgacon_switch(struct vc_data *c)
{
 int x = c->vc_cols * VGA_FONTWIDTH;
 int y = c->vc_rows * c->vc_font.height;
 int rows = screen_info.orig_video_lines * vga_default_font_height/
  c->vc_font.height;





 vga_video_num_columns = c->vc_cols;
 vga_video_num_lines = c->vc_rows;




 if (!vga_is_gfx) {
  scr_memcpyw((u16 *) c->vc_origin, (u16 *) c->vc_screenbuf,
       c->vc_screenbuf_size > vga_vram_size ?
    vga_vram_size : c->vc_screenbuf_size);

  if ((vgacon_xres != x || vgacon_yres != y) &&
      (!(vga_video_num_columns % 2) &&
       vga_video_num_columns <= screen_info.orig_video_cols &&
       vga_video_num_lines <= rows))
   vgacon_doresize(c, c->vc_cols, c->vc_rows);
 }

 vgacon_scrollback_init(c->vc_size_row);
 return 0;
}
