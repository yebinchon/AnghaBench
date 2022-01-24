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
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int WORD ;
struct TYPE_2__ {scalar_t__ DSPQ; scalar_t__ pwDSPQData; scalar_t__ io; } ;

/* Variables and functions */
 scalar_t__ HP_RXL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ JQS_wHead ; 
 scalar_t__ JQS_wSize ; 
 scalar_t__ JQS_wTail ; 
 TYPE_1__ dev ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	/* Send ack to DSP */
	FUNC1(dev.io + HP_RXL);

	/* Evaluate queued DSP messages */
	while (FUNC2(dev.DSPQ + JQS_wTail) != FUNC2(dev.DSPQ + JQS_wHead)) {
		register WORD wTmp;

		FUNC0(FUNC2(dev.pwDSPQData + 2*FUNC2(dev.DSPQ + JQS_wHead)));

		if ((wTmp = FUNC2(dev.DSPQ + JQS_wHead) + 1) > FUNC2(dev.DSPQ + JQS_wSize))
			FUNC3(0, dev.DSPQ + JQS_wHead);
		else
			FUNC3(wTmp, dev.DSPQ + JQS_wHead);
	}
	return IRQ_HANDLED;
}