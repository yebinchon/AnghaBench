#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct xhci_hcd {TYPE_1__ comp_mode_recovery_timer; scalar_t__ port_status_u0; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_MODE_RCVRY_MSECS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  compliance_mode_recovery ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,char*) ; 

__attribute__((used)) static void FUNC4(struct xhci_hcd *xhci)
{
	xhci->port_status_u0 = 0;
	FUNC1(&xhci->comp_mode_recovery_timer);

	xhci->comp_mode_recovery_timer.data = (unsigned long) xhci;
	xhci->comp_mode_recovery_timer.function = compliance_mode_recovery;
	xhci->comp_mode_recovery_timer.expires = jiffies +
			FUNC2(COMP_MODE_RCVRY_MSECS);

	FUNC0(&xhci->comp_mode_recovery_timer);
	FUNC3(xhci, "Compliance mode recovery timer initialized\n");
}