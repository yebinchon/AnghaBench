
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int dummy; } ;


 int * MDA_ADDR (int,int) ;
 int mda_convert_attr (int ) ;
 int scr_readw (int ) ;
 int scr_writew (int ,int ) ;

__attribute__((used)) static void mdacon_putcs(struct vc_data *c, const unsigned short *s,
           int count, int y, int x)
{
 u16 *dest = MDA_ADDR(x, y);

 for (; count > 0; count--) {
  scr_writew(mda_convert_attr(scr_readw(s++)), dest++);
 }
}
