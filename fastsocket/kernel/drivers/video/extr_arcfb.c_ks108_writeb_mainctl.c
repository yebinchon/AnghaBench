
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcfb_par {int cio_addr; } ;


 int outb (unsigned char,int ) ;
 int tuhold ;
 int udelay (int ) ;

__attribute__((used)) static void ks108_writeb_mainctl(struct arcfb_par *par, unsigned char value)
{

 outb(value, par->cio_addr);
 udelay(tuhold);
}
