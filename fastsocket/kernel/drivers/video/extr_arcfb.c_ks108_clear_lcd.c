
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcfb_par {int dummy; } ;


 int ks108_set_xaddr (struct arcfb_par*,unsigned int,int ) ;
 int ks108_set_yaddr (struct arcfb_par*,unsigned int,int) ;
 int ks108_writeb_data (struct arcfb_par*,unsigned int,unsigned char) ;
 scalar_t__ splashval ;

__attribute__((used)) static void ks108_clear_lcd(struct arcfb_par *par, unsigned int chipindex)
{
 int i,j;

 for (i = 0; i <= 8; i++) {
  ks108_set_yaddr(par, chipindex, i);
  ks108_set_xaddr(par, chipindex, 0);
  for (j = 0; j < 64; j++) {
   ks108_writeb_data(par, chipindex,
    (unsigned char) splashval);
  }
 }
}
