
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int vc_cursor_type; int vc_y; int vc_x; } ;
struct fb_tilecursor {int mode; int fg; int bg; int shape; int sy; int sx; } ;
struct fb_info {TYPE_1__* tileops; } ;
struct TYPE_2__ {int (* fb_tilecursor ) (struct fb_info*,struct fb_tilecursor*) ;} ;


 int CM_ERASE ;






 int FB_TILE_CURSOR_BLOCK ;
 int FB_TILE_CURSOR_LOWER_HALF ;
 int FB_TILE_CURSOR_LOWER_THIRD ;
 int FB_TILE_CURSOR_NONE ;
 int FB_TILE_CURSOR_TWO_THIRDS ;
 int FB_TILE_CURSOR_UNDERLINE ;
 int stub1 (struct fb_info*,struct fb_tilecursor*) ;

__attribute__((used)) static void tile_cursor(struct vc_data *vc, struct fb_info *info, int mode,
   int softback_lines, int fg, int bg)
{
 struct fb_tilecursor cursor;
 int use_sw = (vc->vc_cursor_type & 0x01);

 cursor.sx = vc->vc_x;
 cursor.sy = vc->vc_y;
 cursor.mode = (mode == CM_ERASE || use_sw) ? 0 : 1;
 cursor.fg = fg;
 cursor.bg = bg;

 switch (vc->vc_cursor_type & 0x0f) {
 case 130:
  cursor.shape = FB_TILE_CURSOR_NONE;
  break;
 case 128:
  cursor.shape = FB_TILE_CURSOR_UNDERLINE;
  break;
 case 131:
  cursor.shape = FB_TILE_CURSOR_LOWER_THIRD;
  break;
 case 132:
  cursor.shape = FB_TILE_CURSOR_LOWER_HALF;
  break;
 case 129:
  cursor.shape = FB_TILE_CURSOR_TWO_THIRDS;
  break;
 case 133:
 default:
  cursor.shape = FB_TILE_CURSOR_BLOCK;
  break;
 }

 info->tileops->fb_tilecursor(info, &cursor);
}
