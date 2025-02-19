
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rme96 {int areg; scalar_t__ iobase; } ;


 int RME96_AR_CCLK ;
 int RME96_AR_CDATA ;
 int RME96_AR_CLATCH ;
 scalar_t__ RME96_IO_ADDITIONAL_REG ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
snd_rme96_write_SPI(struct rme96 *rme96, u16 val)
{
 int i;

 for (i = 0; i < 16; i++) {
  if (val & 0x8000) {
   rme96->areg |= RME96_AR_CDATA;
  } else {
   rme96->areg &= ~RME96_AR_CDATA;
  }
  rme96->areg &= ~(RME96_AR_CCLK | RME96_AR_CLATCH);
  writel(rme96->areg, rme96->iobase + RME96_IO_ADDITIONAL_REG);
  udelay(10);
  rme96->areg |= RME96_AR_CCLK;
  writel(rme96->areg, rme96->iobase + RME96_IO_ADDITIONAL_REG);
  udelay(10);
  val <<= 1;
 }
 rme96->areg &= ~(RME96_AR_CCLK | RME96_AR_CDATA);
 rme96->areg |= RME96_AR_CLATCH;
 writel(rme96->areg, rme96->iobase + RME96_IO_ADDITIONAL_REG);
 udelay(10);
 rme96->areg &= ~RME96_AR_CLATCH;
 writel(rme96->areg, rme96->iobase + RME96_IO_ADDITIONAL_REG);
}
