
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct enc_private {int MyCRB; int MyCRA; } ;
struct comedi_device {int dummy; } ;


 int CLKSRC_COUNTER ;
 int CLKSRC_EXTENDER ;
 int CLKSRC_TIMER ;
 int CRABIT_CLKSRC_B ;
 int CRABIT_INDXSRC_B ;
 int CRBBIT_CLKENAB_B ;
 int CRBBIT_CLKMULT_B ;
 int CRBBIT_CLKPOL_B ;
 int CRBBIT_INDXPOL_B ;
 int CRBBIT_INTSRC_B ;
 int CRBBIT_LATCHSRC ;
 int CRBBIT_LOADSRC_B ;
 int CRBMSK_CLKMULT_B ;
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
 int STDBIT_LOADSRC ;
 int STDMSK_CLKENAB ;
 int STDMSK_CLKMULT ;
 int STDMSK_CLKPOL ;
 int STDMSK_INDXPOL ;
 int STDMSK_INDXSRC ;
 int STDMSK_INTSRC ;
 int STDMSK_LATCHSRC ;
 int STDMSK_LOADSRC ;

__attribute__((used)) static uint16_t GetMode_B(struct comedi_device *dev, struct enc_private *k)
{
 register uint16_t cra;
 register uint16_t crb;
 register uint16_t setup;


 cra = DEBIread(dev, k->MyCRA);
 crb = DEBIread(dev, k->MyCRB);



 setup = (((crb << (STDBIT_INTSRC - CRBBIT_INTSRC_B)) & STDMSK_INTSRC)
   |((crb << (STDBIT_LATCHSRC - CRBBIT_LATCHSRC)) & STDMSK_LATCHSRC)
   |((crb << (STDBIT_LOADSRC - CRBBIT_LOADSRC_B)) & STDMSK_LOADSRC)
   |((crb << (STDBIT_INDXPOL - CRBBIT_INDXPOL_B)) & STDMSK_INDXPOL)
   |((crb >> (CRBBIT_CLKENAB_B - STDBIT_CLKENAB)) & STDMSK_CLKENAB)
   |((cra >> ((CRABIT_INDXSRC_B + 1) - STDBIT_INDXSRC)) & STDMSK_INDXSRC));


 if ((crb & CRBMSK_CLKMULT_B) == (MULT_X0 << CRBBIT_CLKMULT_B))
  setup |= ((CLKSRC_EXTENDER << STDBIT_CLKSRC)
     |(MULT_X1 << STDBIT_CLKMULT)
     |((cra >> (CRABIT_CLKSRC_B - STDBIT_CLKPOL)) & STDMSK_CLKPOL));

 else if (cra & (2 << CRABIT_CLKSRC_B))
  setup |= ((CLKSRC_TIMER << STDBIT_CLKSRC)
     |(MULT_X1 << STDBIT_CLKMULT)
     |((cra >> (CRABIT_CLKSRC_B - STDBIT_CLKPOL)) & STDMSK_CLKPOL));

 else
  setup |= ((CLKSRC_COUNTER << STDBIT_CLKSRC)
     |((crb >> (CRBBIT_CLKMULT_B - STDBIT_CLKMULT)) & STDMSK_CLKMULT)
     |((crb << (STDBIT_CLKPOL - CRBBIT_CLKPOL_B)) & STDMSK_CLKPOL));


 return setup;
}
