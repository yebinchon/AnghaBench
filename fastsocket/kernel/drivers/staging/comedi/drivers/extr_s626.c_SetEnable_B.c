
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct enc_private {int MyCRB; } ;
struct comedi_device {int dummy; } ;


 int CRBBIT_CLKENAB_B ;
 int CRBMSK_CLKENAB_B ;
 int CRBMSK_INTCTRL ;
 int DEBIreplace (struct comedi_device*,int ,int,int) ;

__attribute__((used)) static void SetEnable_B(struct comedi_device *dev, struct enc_private *k,
   uint16_t enab)
{
 DEBIreplace(dev, k->MyCRB,
      (uint16_t) (~(CRBMSK_INTCTRL | CRBMSK_CLKENAB_B)),
      (uint16_t) (enab << CRBBIT_CLKENAB_B));
}
