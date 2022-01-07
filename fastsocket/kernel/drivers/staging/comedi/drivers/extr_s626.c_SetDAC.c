
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int Dacpol; } ;


 int EOS ;
 int SETVECT (int,int) ;
 int SendDAC (struct comedi_device*,int) ;
 int WS1 ;
 int WS2 ;
 int WS3 ;
 int XFIFO_0 ;
 int XFIFO_1 ;
 int XFIFO_2 ;
 int XFIFO_3 ;
 int XSD2 ;
 TYPE_1__* devpriv ;

__attribute__((used)) static void SetDAC(struct comedi_device *dev, uint16_t chan, short dacdata)
{
 register uint16_t signmask;
 register uint32_t WSImage;



 signmask = 1 << chan;
 if (dacdata < 0) {
  dacdata = -dacdata;
  devpriv->Dacpol |= signmask;
 } else
  devpriv->Dacpol &= ~signmask;


 if ((uint16_t) dacdata > 0x1FFF)
  dacdata = 0x1FFF;
 WSImage = (chan & 2) ? WS1 : WS2;

 SETVECT(2, XSD2 | XFIFO_1 | WSImage);

 SETVECT(3, XSD2 | XFIFO_0 | WSImage);

 SETVECT(4, XSD2 | XFIFO_3 | WS3);

 SETVECT(5, XSD2 | XFIFO_2 | WS3 | EOS);
 SendDAC(dev, 0x0F000000

  | 0x00004000


  | ((uint32_t) (chan & 1) << 15)

  | (uint32_t) dacdata);

}
