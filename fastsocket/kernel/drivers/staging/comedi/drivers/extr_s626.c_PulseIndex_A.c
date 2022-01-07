
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct enc_private {int MyCRA; } ;
struct comedi_device {int dummy; } ;


 int CRAMSK_INDXPOL_A ;
 int DEBIread (struct comedi_device*,int ) ;
 int DEBIwrite (struct comedi_device*,int ,int) ;
 int DEBUG (char*) ;

__attribute__((used)) static void PulseIndex_A(struct comedi_device *dev, struct enc_private *k)
{
 register uint16_t cra;

 DEBUG("PulseIndex_A: pulse index enter\n");

 cra = DEBIread(dev, k->MyCRA);
 DEBIwrite(dev, k->MyCRA, (uint16_t) (cra ^ CRAMSK_INDXPOL_A));
 DEBUG("PulseIndex_A: pulse index step1\n");
 DEBIwrite(dev, k->MyCRA, cra);
}
