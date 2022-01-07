
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int vc_rows; int vc_video_erase_char; } ;


 int MDA_ADDR (int ,int) ;


 int mda_convert_attr (int ) ;
 int mda_num_columns ;
 int scr_memmovew (int ,int ,int) ;
 int scr_memsetw (int ,int ,int) ;

__attribute__((used)) static int mdacon_scroll(struct vc_data *c, int t, int b, int dir, int lines)
{
 u16 eattr = mda_convert_attr(c->vc_video_erase_char);

 if (!lines)
  return 0;

 if (lines > c->vc_rows)
  lines = c->vc_rows;

 switch (dir) {

 case 128:
  scr_memmovew(MDA_ADDR(0,t), MDA_ADDR(0,t+lines),
    (b-t-lines)*mda_num_columns*2);
  scr_memsetw(MDA_ADDR(0,b-lines), eattr,
    lines*mda_num_columns*2);
  break;

 case 129:
  scr_memmovew(MDA_ADDR(0,t+lines), MDA_ADDR(0,t),
    (b-t-lines)*mda_num_columns*2);
  scr_memsetw(MDA_ADDR(0,t), eattr, lines*mda_num_columns*2);
  break;
 }

 return 0;
}
