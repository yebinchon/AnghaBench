
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcfb_par {unsigned char* cslut; int cio_addr; int dio_addr; } ;


 unsigned char KS_CEHI ;
 unsigned char KS_CELO ;
 unsigned char KS_SEL_DATA ;
 int outb (unsigned char,int ) ;
 int tuhold ;
 int udelay (int ) ;

__attribute__((used)) static void ks108_writeb_data(struct arcfb_par *par,
    unsigned int chipindex, unsigned char value)
{
 unsigned char chipselval = par->cslut[chipindex];

 outb(chipselval|KS_CEHI|KS_SEL_DATA, par->cio_addr);
 outb(value, par->dio_addr);
 udelay(tuhold);
 outb(chipselval|KS_CELO|KS_SEL_DATA, par->cio_addr);
}
