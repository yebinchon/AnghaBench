
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp116x {int addr_reg; } ;


 int IRQ_TEST () ;
 int isp116x_delay (struct isp116x*,int) ;
 int writew (unsigned int,int ) ;

__attribute__((used)) static inline void isp116x_write_addr(struct isp116x *isp116x, unsigned reg)
{
 IRQ_TEST();
 writew(reg & 0xff, isp116x->addr_reg);
 isp116x_delay(isp116x, 300);
}
