
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct enc_private {int MyCRB; } ;
struct comedi_device {int dummy; } ;


 int CRBBIT_LOADSRC_B ;
 int CRBMSK_INTCTRL ;
 int CRBMSK_LOADSRC_B ;
 int DEBIreplace (struct comedi_device*,int ,int,int) ;

__attribute__((used)) static void SetLoadTrig_B(struct comedi_device *dev, struct enc_private *k,
     uint16_t Trig)
{
 DEBIreplace(dev, k->MyCRB,
      (uint16_t) (~(CRBMSK_LOADSRC_B | CRBMSK_INTCTRL)),
      (uint16_t) (Trig << CRBBIT_LOADSRC_B));
}
