
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcfb_par {int dummy; } ;


 unsigned char KS_SET_PAGE_NUM ;
 int ks108_writeb_ctl (struct arcfb_par*,unsigned int,unsigned char) ;

__attribute__((used)) static void ks108_set_yaddr(struct arcfb_par *par,
    unsigned int chipindex, unsigned char y)
{
 ks108_writeb_ctl(par, chipindex, KS_SET_PAGE_NUM|y);
}
