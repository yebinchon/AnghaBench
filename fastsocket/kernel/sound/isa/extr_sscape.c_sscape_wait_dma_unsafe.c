
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum GA_REG { ____Placeholder_GA_REG } GA_REG ;


 int sscape_read_unsafe (unsigned int,int) ;
 int udelay (int) ;

__attribute__((used)) static int sscape_wait_dma_unsafe(unsigned io_base, enum GA_REG reg, unsigned timeout)
{
 while (!(sscape_read_unsafe(io_base, reg) & 0x01) && (timeout != 0)) {
  udelay(100);
  --timeout;
 }

 return (sscape_read_unsafe(io_base, reg) & 0x01);
}
