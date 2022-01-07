
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct enc_private {int* MyEventBits; int MyCRB; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int CounterIntEnabs; } ;


 size_t CRBBIT_INTSRC_B ;
 size_t CRBMSK_INTCTRL ;
 size_t CRBMSK_INTRESETCMD ;
 size_t CRBMSK_INTRESET_B ;
 size_t CRBMSK_INTSRC_B ;
 size_t DEBIread (struct comedi_device*,int ) ;
 int DEBIwrite (struct comedi_device*,int ,size_t) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static void SetIntSrc_B(struct comedi_device *dev, struct enc_private *k,
   uint16_t IntSource)
{
 uint16_t crb;


 crb = DEBIread(dev, k->MyCRB) & ~CRBMSK_INTCTRL;


 DEBIwrite(dev, k->MyCRB,
    (uint16_t) (crb | CRBMSK_INTRESETCMD | CRBMSK_INTRESET_B));


 DEBIwrite(dev, k->MyCRB,
    (uint16_t) ((crb & ~CRBMSK_INTSRC_B) | (IntSource <<
         CRBBIT_INTSRC_B)));


 devpriv->CounterIntEnabs =
     (devpriv->CounterIntEnabs & ~k->
      MyEventBits[3]) | k->MyEventBits[IntSource];
}
