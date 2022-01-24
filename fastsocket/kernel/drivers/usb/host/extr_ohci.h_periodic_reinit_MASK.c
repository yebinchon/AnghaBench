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
typedef  int u32 ;
struct ohci_hcd {int fminterval; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  periodicstart; int /*<<< orphan*/  fminterval; } ;

/* Variables and functions */
 int FIT ; 
 int FUNC0 (struct ohci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2 (struct ohci_hcd *ohci)
{
	u32	fi = ohci->fminterval & 0x03fff;
	u32	fit = FUNC0(ohci, &ohci->regs->fminterval) & FIT;

	FUNC1 (ohci, (fit ^ FIT) | ohci->fminterval,
						&ohci->regs->fminterval);
	FUNC1 (ohci, ((9 * fi) / 10) & 0x3fff,
						&ohci->regs->periodicstart);
}