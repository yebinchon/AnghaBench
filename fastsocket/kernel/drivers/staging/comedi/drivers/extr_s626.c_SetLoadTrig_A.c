
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct enc_private {int MyCRA; } ;
struct comedi_device {int dummy; } ;


 int CRABIT_LOADSRC_A ;
 scalar_t__ CRAMSK_LOADSRC_A ;
 int DEBIreplace (struct comedi_device*,int ,int,int) ;

__attribute__((used)) static void SetLoadTrig_A(struct comedi_device *dev, struct enc_private *k,
     uint16_t Trig)
{
 DEBIreplace(dev, k->MyCRA, (uint16_t) (~CRAMSK_LOADSRC_A),
      (uint16_t) (Trig << CRABIT_LOADSRC_A));
}
