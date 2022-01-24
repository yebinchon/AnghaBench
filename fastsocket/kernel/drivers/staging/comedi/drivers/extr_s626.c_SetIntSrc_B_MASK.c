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
typedef  size_t uint16_t ;
struct enc_private {int* MyEventBits; int /*<<< orphan*/  MyCRB; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int CounterIntEnabs; } ;

/* Variables and functions */
 size_t CRBBIT_INTSRC_B ; 
 size_t CRBMSK_INTCTRL ; 
 size_t CRBMSK_INTRESETCMD ; 
 size_t CRBMSK_INTRESET_B ; 
 size_t CRBMSK_INTSRC_B ; 
 size_t FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* devpriv ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev, struct enc_private *k,
			uint16_t IntSource)
{
	uint16_t crb;

	/*  Cache writeable CRB register image. */
	crb = FUNC0(dev, k->MyCRB) & ~CRBMSK_INTCTRL;

	/*  Reset any pending counter overflow or index captures. */
	FUNC1(dev, k->MyCRB,
		  (uint16_t) (crb | CRBMSK_INTRESETCMD | CRBMSK_INTRESET_B));

	/*  Program counter interrupt source. */
	FUNC1(dev, k->MyCRB,
		  (uint16_t) ((crb & ~CRBMSK_INTSRC_B) | (IntSource <<
							  CRBBIT_INTSRC_B)));

	/*  Update MISC2 interrupt enable mask. */
	devpriv->CounterIntEnabs =
	    (devpriv->CounterIntEnabs & ~k->
	     MyEventBits[3]) | k->MyEventBits[IntSource];
}