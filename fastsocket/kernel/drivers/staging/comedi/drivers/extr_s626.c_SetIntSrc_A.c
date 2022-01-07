
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct enc_private {int* MyEventBits; int MyCRA; int MyCRB; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int CounterIntEnabs; } ;


 size_t CRABIT_INTSRC_A ;
 size_t CRAMSK_INTSRC_A ;
 scalar_t__ CRBMSK_INTCTRL ;
 size_t CRBMSK_INTRESETCMD ;
 size_t CRBMSK_INTRESET_A ;
 int DEBIreplace (struct comedi_device*,int ,size_t,size_t) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static void SetIntSrc_A(struct comedi_device *dev, struct enc_private *k,
   uint16_t IntSource)
{

 DEBIreplace(dev, k->MyCRB, (uint16_t) (~CRBMSK_INTCTRL),
      CRBMSK_INTRESETCMD | CRBMSK_INTRESET_A);


 DEBIreplace(dev, k->MyCRA, ~CRAMSK_INTSRC_A,
      (uint16_t) (IntSource << CRABIT_INTSRC_A));


 devpriv->CounterIntEnabs =
     (devpriv->CounterIntEnabs & ~k->
      MyEventBits[3]) | k->MyEventBits[IntSource];
}
