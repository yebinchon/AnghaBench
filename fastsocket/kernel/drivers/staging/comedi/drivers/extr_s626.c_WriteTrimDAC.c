
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {size_t* TrimSetpoint; } ;


 int EOS ;
 int SETVECT (int,int) ;
 int SendDAC (struct comedi_device*,int) ;
 int WS1 ;
 int WS3 ;
 int XFIFO_0 ;
 int XFIFO_1 ;
 int XFIFO_2 ;
 int XFIFO_3 ;
 int XSD2 ;
 TYPE_1__* devpriv ;
 scalar_t__* trimchan ;

__attribute__((used)) static void WriteTrimDAC(struct comedi_device *dev, uint8_t LogicalChan,
    uint8_t DacData)
{
 uint32_t chan;


 devpriv->TrimSetpoint[LogicalChan] = (uint8_t) DacData;


 chan = (uint32_t) trimchan[LogicalChan];






 SETVECT(2, XSD2 | XFIFO_1 | WS3);

 SETVECT(3, XSD2 | XFIFO_0 | WS3);

 SETVECT(4, XSD2 | XFIFO_3 | WS1);

 SETVECT(5, XSD2 | XFIFO_2 | WS1 | EOS);
 SendDAC(dev, ((uint32_t) chan << 8)
  | (uint32_t) DacData);
}
