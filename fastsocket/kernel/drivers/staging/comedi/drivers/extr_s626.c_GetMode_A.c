
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct enc_private {int MyCRB; int MyCRA; } ;
struct comedi_device {int dummy; } ;


 int CLKSRC_COUNTER ;
 int CLKSRC_TIMER ;
 int CRABIT_CLKMULT_A ;
 int CRABIT_CLKPOL_A ;
 int CRABIT_CLKSRC_A ;
 int CRABIT_INDXPOL_A ;
 int CRABIT_INDXSRC_A ;
 int CRABIT_INTSRC_A ;
 int CRAMSK_CLKMULT_A ;
 int CRBBIT_CLKENAB_A ;
 int CRBBIT_LATCHSRC ;
 int DEBIread (struct comedi_device*,int ) ;
 int MULT_X0 ;
 int MULT_X1 ;
 int STDBIT_CLKENAB ;
 int STDBIT_CLKMULT ;
 int STDBIT_CLKPOL ;
 int STDBIT_CLKSRC ;
 int STDBIT_INDXPOL ;
 int STDBIT_INDXSRC ;
 int STDBIT_INTSRC ;
 int STDBIT_LATCHSRC ;
 int STDMSK_CLKENAB ;
 int STDMSK_CLKMULT ;
 int STDMSK_CLKPOL ;
 int STDMSK_INDXPOL ;
 int STDMSK_INDXSRC ;
 int STDMSK_INTSRC ;
 int STDMSK_LATCHSRC ;
 int STDMSK_LOADSRC ;

__attribute__((used)) static uint16_t GetMode_A(struct comedi_device *dev, struct enc_private *k)
{
 register uint16_t cra;
 register uint16_t crb;
 register uint16_t setup;


 cra = DEBIread(dev, k->MyCRA);
 crb = DEBIread(dev, k->MyCRB);



 setup = ((cra & STDMSK_LOADSRC)
   |((crb << (STDBIT_LATCHSRC - CRBBIT_LATCHSRC)) & STDMSK_LATCHSRC)
   |((cra << (STDBIT_INTSRC - CRABIT_INTSRC_A)) & STDMSK_INTSRC)
   |((cra << (STDBIT_INDXSRC - (CRABIT_INDXSRC_A + 1))) & STDMSK_INDXSRC)
   |((cra >> (CRABIT_INDXPOL_A - STDBIT_INDXPOL)) & STDMSK_INDXPOL)
   |((crb >> (CRBBIT_CLKENAB_A - STDBIT_CLKENAB)) & STDMSK_CLKENAB));


 if (cra & (2 << CRABIT_CLKSRC_A))
  setup |= ((CLKSRC_TIMER << STDBIT_CLKSRC)
     |((cra << (STDBIT_CLKPOL - CRABIT_CLKSRC_A)) & STDMSK_CLKPOL)
     |(MULT_X1 << STDBIT_CLKMULT));

 else
  setup |= ((CLKSRC_COUNTER << STDBIT_CLKSRC)
     |((cra >> (CRABIT_CLKPOL_A - STDBIT_CLKPOL)) & STDMSK_CLKPOL)
     |(((cra & CRAMSK_CLKMULT_A) == (MULT_X0 << CRABIT_CLKMULT_A)) ?
       (MULT_X1 << STDBIT_CLKMULT) :
       ((cra >> (CRABIT_CLKMULT_A -
          STDBIT_CLKMULT)) & STDMSK_CLKMULT)));


 return setup;
}
