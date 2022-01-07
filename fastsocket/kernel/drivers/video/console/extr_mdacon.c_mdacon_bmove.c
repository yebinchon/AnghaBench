
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int dummy; } ;


 int * MDA_ADDR (int,int) ;
 int mda_num_columns ;
 int scr_memmovew (int *,int *,int) ;

__attribute__((used)) static void mdacon_bmove(struct vc_data *c, int sy, int sx,
    int dy, int dx, int height, int width)
{
 u16 *src, *dest;

 if (width <= 0 || height <= 0)
  return;

 if (sx==0 && dx==0 && width==mda_num_columns) {
  scr_memmovew(MDA_ADDR(0,dy), MDA_ADDR(0,sy), height*width*2);

 } else if (dy < sy || (dy == sy && dx < sx)) {
  src = MDA_ADDR(sx, sy);
  dest = MDA_ADDR(dx, dy);

  for (; height > 0; height--) {
   scr_memmovew(dest, src, width*2);
   src += mda_num_columns;
   dest += mda_num_columns;
  }
 } else {
  src = MDA_ADDR(sx, sy+height-1);
  dest = MDA_ADDR(dx, dy+height-1);

  for (; height > 0; height--) {
   scr_memmovew(dest, src, width*2);
   src -= mda_num_columns;
   dest -= mda_num_columns;
  }
 }
}
