
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme96 {scalar_t__ iobase; int wcreg; } ;


 scalar_t__ RME96_IO_CONTROL_REGISTER ;
 int RME96_WCR_MONITOR_0 ;
 int RME96_WCR_MONITOR_1 ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int
snd_rme96_setmontracks(struct rme96 *rme96,
         int montracks)
{
 if (montracks & 1) {
  rme96->wcreg |= RME96_WCR_MONITOR_0;
 } else {
  rme96->wcreg &= ~RME96_WCR_MONITOR_0;
 }
 if (montracks & 2) {
  rme96->wcreg |= RME96_WCR_MONITOR_1;
 } else {
  rme96->wcreg &= ~RME96_WCR_MONITOR_1;
 }
 writel(rme96->wcreg, rme96->iobase + RME96_IO_CONTROL_REGISTER);
 return 0;
}
