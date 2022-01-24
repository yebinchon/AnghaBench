#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct enc_private {int /*<<< orphan*/  MyCRB; int /*<<< orphan*/  MyCRA; int /*<<< orphan*/ * MyEventBits; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  CounterIntEnabs; } ;

/* Variables and functions */
 int CLKSRC_COUNTER ; 
#define  CLKSRC_EXTENDER 129 
#define  CLKSRC_TIMER 128 
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
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int /*<<< orphan*/ ,int,int) ; 
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

__attribute__((used)) static void FUNC1(struct comedi_device *dev, struct enc_private *k,
		      uint16_t Setup, uint16_t DisableIntSrc)
{
	register uint16_t cra;
	register uint16_t crb;
	register uint16_t setup = Setup;	/*  Cache the Standard Setup. */

	/*  Initialize CRA and CRB images. */
	cra = ((setup & CRAMSK_LOADSRC_A)	/*  Preload trigger is passed through. */
	       |((setup & STDMSK_INDXSRC) >> (STDBIT_INDXSRC - (CRABIT_INDXSRC_A + 1))));	/*  IndexSrc is restricted to ENC_X or IndxPol. */

	crb = (CRBMSK_INTRESETCMD | CRBMSK_INTRESET_A	/*  Reset any pending CounterA event captures. */
	       | ((setup & STDMSK_CLKENAB) << (CRBBIT_CLKENAB_A - STDBIT_CLKENAB)));	/*  Clock enable is passed through. */

	/*  Force IntSrc to Disabled if DisableIntSrc is asserted. */
	if (!DisableIntSrc)
		cra |= ((setup & STDMSK_INTSRC) >> (STDBIT_INTSRC -
						    CRABIT_INTSRC_A));

	/*  Populate all mode-dependent attributes of CRA & CRB images. */
	switch ((setup & STDMSK_CLKSRC) >> STDBIT_CLKSRC) {
	case CLKSRC_EXTENDER:	/*  Extender Mode: Force to Timer mode */
		/*  (Extender valid only for B counters). */

	case CLKSRC_TIMER:	/*  Timer Mode: */
		cra |= ((2 << CRABIT_CLKSRC_A)	/*    ClkSrcA<1> selects system clock */
			|((setup & STDMSK_CLKPOL) >> (STDBIT_CLKPOL - CRABIT_CLKSRC_A))	/*      with count direction (ClkSrcA<0>) obtained from ClkPol. */
			|(1 << CRABIT_CLKPOL_A)	/*    ClkPolA behaves as always-on clock enable. */
			|(MULT_X1 << CRABIT_CLKMULT_A));	/*    ClkMult must be 1x. */
		break;

	default:		/*  Counter Mode: */
		cra |= (CLKSRC_COUNTER	/*    Select ENC_C and ENC_D as clock/direction inputs. */
			| ((setup & STDMSK_CLKPOL) << (CRABIT_CLKPOL_A - STDBIT_CLKPOL))	/*    Clock polarity is passed through. */
			|(((setup & STDMSK_CLKMULT) == (MULT_X0 << STDBIT_CLKMULT)) ?	/*    Force multiplier to x1 if not legal, otherwise pass through. */
			  (MULT_X1 << CRABIT_CLKMULT_A) :
			  ((setup & STDMSK_CLKMULT) << (CRABIT_CLKMULT_A -
							STDBIT_CLKMULT))));
	}

	/*  Force positive index polarity if IndxSrc is software-driven only, */
	/*  otherwise pass it through. */
	if (~setup & STDMSK_INDXSRC)
		cra |= ((setup & STDMSK_INDXPOL) << (CRABIT_INDXPOL_A -
						     STDBIT_INDXPOL));

	/*  If IntSrc has been forced to Disabled, update the MISC2 interrupt */
	/*  enable mask to indicate the counter interrupt is disabled. */
	if (DisableIntSrc)
		devpriv->CounterIntEnabs &= ~k->MyEventBits[3];

	/*  While retaining CounterB and LatchSrc configurations, program the */
	/*  new counter operating mode. */
	FUNC0(dev, k->MyCRA, CRAMSK_INDXSRC_B | CRAMSK_CLKSRC_B, cra);
	FUNC0(dev, k->MyCRB,
		    (uint16_t) (~(CRBMSK_INTCTRL | CRBMSK_CLKENAB_A)), crb);
}