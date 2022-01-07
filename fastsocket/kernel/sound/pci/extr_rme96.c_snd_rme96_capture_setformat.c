
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme96 {scalar_t__ iobase; int wcreg; } ;


 int EINVAL ;
 scalar_t__ RME96_IO_CONTROL_REGISTER ;
 int RME96_WCR_MODE24_2 ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static int
snd_rme96_capture_setformat(struct rme96 *rme96,
       int format)
{
 switch (format) {
 case 129:
  rme96->wcreg &= ~RME96_WCR_MODE24_2;
  break;
 case 128:
  rme96->wcreg |= RME96_WCR_MODE24_2;
  break;
 default:
  return -EINVAL;
 }
 writel(rme96->wcreg, rme96->iobase + RME96_IO_CONTROL_REGISTER);
 return 0;
}
