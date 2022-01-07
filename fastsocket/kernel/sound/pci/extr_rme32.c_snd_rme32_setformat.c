
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme32 {scalar_t__ iobase; int wcreg; } ;


 int EINVAL ;
 scalar_t__ RME32_IO_CONTROL_REGISTER ;
 int RME32_WCR_MODE24 ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static int snd_rme32_setformat(struct rme32 * rme32, int format)
{
 switch (format) {
 case 129:
  rme32->wcreg &= ~RME32_WCR_MODE24;
  break;
 case 128:
  rme32->wcreg |= RME32_WCR_MODE24;
  break;
 default:
  return -EINVAL;
 }
 writel(rme32->wcreg, rme32->iobase + RME32_IO_CONTROL_REGISTER);
 return 0;
}
