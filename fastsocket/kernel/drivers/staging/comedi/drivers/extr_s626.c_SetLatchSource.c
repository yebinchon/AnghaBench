
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct enc_private {int MyCRB; } ;
struct comedi_device {int dummy; } ;


 int CRBBIT_LATCHSRC ;
 int CRBMSK_INTCTRL ;
 int CRBMSK_LATCHSRC ;
 int DEBIreplace (struct comedi_device*,int ,int,int) ;
 int DEBUG (char*) ;

__attribute__((used)) static void SetLatchSource(struct comedi_device *dev, struct enc_private *k,
      uint16_t value)
{
 DEBUG("SetLatchSource: SetLatchSource enter 3550 \n");
 DEBIreplace(dev, k->MyCRB,
      (uint16_t) (~(CRBMSK_INTCTRL | CRBMSK_LATCHSRC)),
      (uint16_t) (value << CRBBIT_LATCHSRC));

 DEBUG("SetLatchSource: SetLatchSource exit \n");
}
