
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme96 {int rcreg; scalar_t__ iobase; int wcreg; } ;


 scalar_t__ RME96_IO_CONFIRM_REC_IRQ ;
 scalar_t__ RME96_IO_CONTROL_REGISTER ;
 int RME96_RCR_IRQ_2 ;
 int RME96_WCR_START_2 ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
snd_rme96_capture_stop(struct rme96 *rme96)
{
 rme96->rcreg = readl(rme96->iobase + RME96_IO_CONTROL_REGISTER);
 if (rme96->rcreg & RME96_RCR_IRQ_2) {
  writel(0, rme96->iobase + RME96_IO_CONFIRM_REC_IRQ);
 }
 rme96->wcreg &= ~RME96_WCR_START_2;
 writel(rme96->wcreg, rme96->iobase + RME96_IO_CONTROL_REGISTER);
}
