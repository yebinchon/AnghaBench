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
struct ehci_hcd {TYPE_1__* regs; int /*<<< orphan*/  hcs_params; } ;
struct TYPE_2__ {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  ClearPortFeature ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SetPortFeature ; 
 int /*<<< orphan*/  USB_PORT_FEAT_POWER ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7 (struct ehci_hcd *ehci, int is_on)
{
	unsigned port;

	if (!FUNC1 (ehci->hcs_params))
		return;

	FUNC2 (ehci, "...power%s ports...\n", is_on ? "up" : "down");
	for (port = FUNC0 (ehci->hcs_params); port > 0; )
		(void) FUNC3(FUNC5(ehci),
				is_on ? SetPortFeature : ClearPortFeature,
				USB_PORT_FEAT_POWER,
				port--, NULL, 0);
	/* Flush those writes */
	FUNC4(ehci, &ehci->regs->command);
	FUNC6(20);
}