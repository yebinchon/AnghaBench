
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct enc_private {int MyCRB; } ;
struct comedi_device {int dummy; } ;


 int CRBMSK_INDXPOL_B ;
 int CRBMSK_INTCTRL ;
 int DEBIread (struct comedi_device*,int ) ;
 int DEBIwrite (struct comedi_device*,int ,int) ;

__attribute__((used)) static void PulseIndex_B(struct comedi_device *dev, struct enc_private *k)
{
 register uint16_t crb;

 crb = DEBIread(dev, k->MyCRB) & ~CRBMSK_INTCTRL;
 DEBIwrite(dev, k->MyCRB, (uint16_t) (crb ^ CRBMSK_INDXPOL_B));
 DEBIwrite(dev, k->MyCRB, crb);
}
