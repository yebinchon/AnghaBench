
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct enc_private {int MyCRB; } ;
struct comedi_device {int dummy; } ;


 int CRBBIT_CLKENAB_A ;
 int CRBMSK_CLKENAB_A ;
 int CRBMSK_INTCTRL ;
 int DEBIreplace (struct comedi_device*,int ,int,int) ;
 int DEBUG (char*) ;

__attribute__((used)) static void SetEnable_A(struct comedi_device *dev, struct enc_private *k,
   uint16_t enab)
{
 DEBUG("SetEnable_A: SetEnable_A enter 3541\n");
 DEBIreplace(dev, k->MyCRB,
      (uint16_t) (~(CRBMSK_INTCTRL | CRBMSK_CLKENAB_A)),
      (uint16_t) (enab << CRBBIT_CLKENAB_A));
}
