
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; } ;
struct vc_data {TYPE_1__ vc_font; } ;
struct fbcon_ops {TYPE_2__* p; int update_start; int cursor; int clear_margins; int putcs; int clear; int bmove; } ;
struct fb_tilemap {int depth; int length; int data; int height; int width; } ;
struct fb_info {TYPE_3__* tileops; struct fbcon_ops* fbcon_par; } ;
struct TYPE_6__ {int (* fb_settile ) (struct fb_info*,struct fb_tilemap*) ;} ;
struct TYPE_5__ {int fontdata; scalar_t__ userfont; } ;


 int FNTCHARCNT (int ) ;
 int stub1 (struct fb_info*,struct fb_tilemap*) ;
 int tile_bmove ;
 int tile_clear ;
 int tile_clear_margins ;
 int tile_cursor ;
 int tile_putcs ;
 int tile_update_start ;

void fbcon_set_tileops(struct vc_data *vc, struct fb_info *info)
{
 struct fb_tilemap map;
 struct fbcon_ops *ops = info->fbcon_par;

 ops->bmove = tile_bmove;
 ops->clear = tile_clear;
 ops->putcs = tile_putcs;
 ops->clear_margins = tile_clear_margins;
 ops->cursor = tile_cursor;
 ops->update_start = tile_update_start;

 if (ops->p) {
  map.width = vc->vc_font.width;
  map.height = vc->vc_font.height;
  map.depth = 1;
  map.length = (ops->p->userfont) ?
   FNTCHARCNT(ops->p->fontdata) : 256;
  map.data = ops->p->fontdata;
  info->tileops->fb_settile(info, &map);
 }
}
