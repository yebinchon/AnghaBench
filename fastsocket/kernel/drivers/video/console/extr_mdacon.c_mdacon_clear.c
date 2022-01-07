
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int vc_video_erase_char; } ;


 int * MDA_ADDR (int,int) ;
 int mda_convert_attr (int ) ;
 int mda_num_columns ;
 int scr_memsetw (int *,int ,int) ;

__attribute__((used)) static void mdacon_clear(struct vc_data *c, int y, int x,
     int height, int width)
{
 u16 *dest = MDA_ADDR(x, y);
 u16 eattr = mda_convert_attr(c->vc_video_erase_char);

 if (width <= 0 || height <= 0)
  return;

 if (x==0 && width==mda_num_columns) {
  scr_memsetw(dest, eattr, height*width*2);
 } else {
  for (; height > 0; height--, dest+=mda_num_columns)
   scr_memsetw(dest, eattr, width*2);
 }
}
