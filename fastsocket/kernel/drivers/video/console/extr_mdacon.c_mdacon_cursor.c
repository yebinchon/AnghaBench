
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_y; int vc_x; int vc_cursor_type; } ;


 int CM_ERASE ;





 int mda_num_columns ;
 int mda_set_cursor (int) ;
 int mda_set_cursor_size (int,int) ;
 int mda_vram_len ;

__attribute__((used)) static void mdacon_cursor(struct vc_data *c, int mode)
{
 if (mode == CM_ERASE) {
  mda_set_cursor(mda_vram_len - 1);
  return;
 }

 mda_set_cursor(c->vc_y*mda_num_columns*2 + c->vc_x*2);

 switch (c->vc_cursor_type & 0x0f) {

  case 130: mda_set_cursor_size(10, 13); break;
  case 131: mda_set_cursor_size(7, 13); break;
  case 128: mda_set_cursor_size(4, 13); break;
  case 132: mda_set_cursor_size(1, 13); break;
  case 129: mda_set_cursor_size(14, 13); break;
  default: mda_set_cursor_size(12, 13); break;
 }
}
