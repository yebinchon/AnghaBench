
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct enc_private {int MyCRB; int MyCRA; int * MyEventBits; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int CounterIntEnabs; } ;


 int CLKSRC_COUNTER ;


 int CRABIT_CLKSRC_B ;
 int CRABIT_INDXSRC_B ;
 int CRAMSK_CLKSRC_B ;
 int CRAMSK_INDXSRC_B ;
 int CRBBIT_CLKENAB_B ;
 int CRBBIT_CLKMULT_B ;
 int CRBBIT_CLKPOL_B ;
 int CRBBIT_INDXPOL_B ;
 int CRBBIT_INTSRC_B ;
 int CRBBIT_LOADSRC_B ;
 int CRBMSK_CLKENAB_A ;
 int CRBMSK_INTRESETCMD ;
 int CRBMSK_INTRESET_B ;
 int CRBMSK_LATCHSRC ;
 int DEBIreplace (struct comedi_device*,int ,int,int) ;
 int MULT_X0 ;
 int MULT_X1 ;
 int STDBIT_CLKENAB ;
 int STDBIT_CLKMULT ;
 int STDBIT_CLKPOL ;
 int STDBIT_CLKSRC ;
 int STDBIT_INDXPOL ;
 int STDBIT_INDXSRC ;
 int STDBIT_INTSRC ;
 int STDBIT_LOADSRC ;
 int STDMSK_CLKENAB ;
 int STDMSK_CLKMULT ;
 int STDMSK_CLKPOL ;
 int STDMSK_CLKSRC ;
 int STDMSK_INDXPOL ;
 int STDMSK_INDXSRC ;
 int STDMSK_INTSRC ;
 int STDMSK_LOADSRC ;
 TYPE_1__* devpriv ;

__attribute__((used)) static void SetMode_B(struct comedi_device *dev, struct enc_private *k,
        uint16_t Setup, uint16_t DisableIntSrc)
{
 register uint16_t cra;
 register uint16_t crb;
 register uint16_t setup = Setup;


 cra = ((setup & STDMSK_INDXSRC) << ((CRABIT_INDXSRC_B + 1) - STDBIT_INDXSRC));

 crb = (CRBMSK_INTRESETCMD | CRBMSK_INTRESET_B
        | ((setup & STDMSK_CLKENAB) << (CRBBIT_CLKENAB_B - STDBIT_CLKENAB))
        |((setup & STDMSK_LOADSRC) >> (STDBIT_LOADSRC - CRBBIT_LOADSRC_B)));


 if (!DisableIntSrc)
  crb |= ((setup & STDMSK_INTSRC) >> (STDBIT_INTSRC -
          CRBBIT_INTSRC_B));


 switch ((setup & STDMSK_CLKSRC) >> STDBIT_CLKSRC) {
 case 128:
  cra |= ((2 << CRABIT_CLKSRC_B)
   |((setup & STDMSK_CLKPOL) << (CRABIT_CLKSRC_B - STDBIT_CLKPOL)));
  crb |= ((1 << CRBBIT_CLKPOL_B)
   |(MULT_X1 << CRBBIT_CLKMULT_B));
  break;

 case 129:
  cra |= ((2 << CRABIT_CLKSRC_B)
   |((setup & STDMSK_CLKPOL) << (CRABIT_CLKSRC_B - STDBIT_CLKPOL)));
  crb |= ((1 << CRBBIT_CLKPOL_B)
   |(MULT_X0 << CRBBIT_CLKMULT_B));
  break;

 default:
  cra |= (CLKSRC_COUNTER << CRABIT_CLKSRC_B);
  crb |= (((setup & STDMSK_CLKPOL) >> (STDBIT_CLKPOL - CRBBIT_CLKPOL_B))
   |(((setup & STDMSK_CLKMULT) == (MULT_X0 << STDBIT_CLKMULT)) ?
     (MULT_X1 << CRBBIT_CLKMULT_B) :
     ((setup & STDMSK_CLKMULT) << (CRBBIT_CLKMULT_B -
       STDBIT_CLKMULT))));
 }



 if (~setup & STDMSK_INDXSRC)
  crb |= ((setup & STDMSK_INDXPOL) >> (STDBIT_INDXPOL -
           CRBBIT_INDXPOL_B));



 if (DisableIntSrc)
  devpriv->CounterIntEnabs &= ~k->MyEventBits[3];



 DEBIreplace(dev, k->MyCRA,
      (uint16_t) (~(CRAMSK_INDXSRC_B | CRAMSK_CLKSRC_B)), cra);
 DEBIreplace(dev, k->MyCRB, CRBMSK_CLKENAB_A | CRBMSK_LATCHSRC, crb);
}
