
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


 int CRABIT_CLKMULT_A ;
 int CRABIT_CLKPOL_A ;
 int CRABIT_CLKSRC_A ;
 int CRABIT_INDXPOL_A ;
 int CRABIT_INDXSRC_A ;
 int CRABIT_INTSRC_A ;
 int CRAMSK_CLKSRC_B ;
 int CRAMSK_INDXSRC_B ;
 int CRAMSK_LOADSRC_A ;
 int CRBBIT_CLKENAB_A ;
 int CRBMSK_CLKENAB_A ;
 int CRBMSK_INTCTRL ;
 int CRBMSK_INTRESETCMD ;
 int CRBMSK_INTRESET_A ;
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
 int STDMSK_CLKENAB ;
 int STDMSK_CLKMULT ;
 int STDMSK_CLKPOL ;
 int STDMSK_CLKSRC ;
 int STDMSK_INDXPOL ;
 int STDMSK_INDXSRC ;
 int STDMSK_INTSRC ;
 TYPE_1__* devpriv ;

__attribute__((used)) static void SetMode_A(struct comedi_device *dev, struct enc_private *k,
        uint16_t Setup, uint16_t DisableIntSrc)
{
 register uint16_t cra;
 register uint16_t crb;
 register uint16_t setup = Setup;


 cra = ((setup & CRAMSK_LOADSRC_A)
        |((setup & STDMSK_INDXSRC) >> (STDBIT_INDXSRC - (CRABIT_INDXSRC_A + 1))));

 crb = (CRBMSK_INTRESETCMD | CRBMSK_INTRESET_A
        | ((setup & STDMSK_CLKENAB) << (CRBBIT_CLKENAB_A - STDBIT_CLKENAB)));


 if (!DisableIntSrc)
  cra |= ((setup & STDMSK_INTSRC) >> (STDBIT_INTSRC -
          CRABIT_INTSRC_A));


 switch ((setup & STDMSK_CLKSRC) >> STDBIT_CLKSRC) {
 case 129:


 case 128:
  cra |= ((2 << CRABIT_CLKSRC_A)
   |((setup & STDMSK_CLKPOL) >> (STDBIT_CLKPOL - CRABIT_CLKSRC_A))
   |(1 << CRABIT_CLKPOL_A)
   |(MULT_X1 << CRABIT_CLKMULT_A));
  break;

 default:
  cra |= (CLKSRC_COUNTER
   | ((setup & STDMSK_CLKPOL) << (CRABIT_CLKPOL_A - STDBIT_CLKPOL))
   |(((setup & STDMSK_CLKMULT) == (MULT_X0 << STDBIT_CLKMULT)) ?
     (MULT_X1 << CRABIT_CLKMULT_A) :
     ((setup & STDMSK_CLKMULT) << (CRABIT_CLKMULT_A -
       STDBIT_CLKMULT))));
 }



 if (~setup & STDMSK_INDXSRC)
  cra |= ((setup & STDMSK_INDXPOL) << (CRABIT_INDXPOL_A -
           STDBIT_INDXPOL));



 if (DisableIntSrc)
  devpriv->CounterIntEnabs &= ~k->MyEventBits[3];



 DEBIreplace(dev, k->MyCRA, CRAMSK_INDXSRC_B | CRAMSK_CLKSRC_B, cra);
 DEBIreplace(dev, k->MyCRB,
      (uint16_t) (~(CRBMSK_INTCTRL | CRBMSK_CLKENAB_A)), crb);
}
