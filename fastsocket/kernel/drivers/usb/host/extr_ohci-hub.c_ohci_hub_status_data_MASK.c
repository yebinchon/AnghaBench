#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usb_hcd {int /*<<< orphan*/  flags; } ;
struct ohci_hcd {int flags; int num_ports; int /*<<< orphan*/  lock; TYPE_2__* regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  a; } ;
struct TYPE_4__ {int /*<<< orphan*/  intrstatus; TYPE_1__ roothub; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCD_FLAG_POLL_RH ; 
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 int MAX_ROOT_PORTS ; 
 int OHCI_INTR_RHSC ; 
 int OHCI_QUIRK_AMD756 ; 
 int RH_A_NDP ; 
 int RH_HS_LPSC ; 
 int RH_HS_OCIC ; 
 int RH_PS_CCS ; 
 int RH_PS_CSC ; 
 int RH_PS_OCIC ; 
 int RH_PS_PESC ; 
 int RH_PS_PRSC ; 
 int RH_PS_PSSC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ohci_hcd* FUNC2 (struct usb_hcd*) ; 
 int FUNC3 (struct ohci_hcd*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ohci_hcd*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ohci_hcd*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ohci_hcd*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ohci_hcd*) ; 
 int FUNC8 (struct ohci_hcd*,int) ; 
 int FUNC9 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC13 (struct usb_hcd *hcd, char *buf)
{
	struct ohci_hcd	*ohci = FUNC2 (hcd);
	int		i, changed = 0, length = 1;
	int		any_connected = 0;
	int		rhsc_status;
	unsigned long	flags;

	FUNC11 (&ohci->lock, flags);
	if (!FUNC0(hcd))
		goto done;

	/* undocumented erratum seen on at least rev D */
	if ((ohci->flags & OHCI_QUIRK_AMD756)
			&& (FUNC7 (ohci) & RH_A_NDP) > MAX_ROOT_PORTS) {
		FUNC5 (ohci, "bogus NDP, rereads as NDP=%d\n",
			  FUNC3 (ohci, &ohci->regs->roothub.a) & RH_A_NDP);
		/* retry later; "should not happen" */
		goto done;
	}

	/* init status */
	if (FUNC9 (ohci) & (RH_HS_LPSC | RH_HS_OCIC))
		buf [0] = changed = 1;
	else
		buf [0] = 0;
	if (ohci->num_ports > 7) {
		buf [1] = 0;
		length++;
	}

	/* Clear the RHSC status flag before reading the port statuses */
	FUNC6(ohci, OHCI_INTR_RHSC, &ohci->regs->intrstatus);
	rhsc_status = FUNC3(ohci, &ohci->regs->intrstatus) &
			OHCI_INTR_RHSC;

	/* look at each port */
	for (i = 0; i < ohci->num_ports; i++) {
		u32	status = FUNC8 (ohci, i);

		/* can't autostop if ports are connected */
		any_connected |= (status & RH_PS_CCS);

		if (status & (RH_PS_CSC | RH_PS_PESC | RH_PS_PSSC
				| RH_PS_OCIC | RH_PS_PRSC)) {
			changed = 1;
			if (i < 7)
			    buf [0] |= 1 << (i + 1);
			else
			    buf [1] |= 1 << (i - 7);
		}
	}

	if (FUNC4(ohci, changed,
			any_connected, rhsc_status))
		FUNC10(HCD_FLAG_POLL_RH, &hcd->flags);
	else
		FUNC1(HCD_FLAG_POLL_RH, &hcd->flags);


done:
	FUNC12 (&ohci->lock, flags);

	return changed ? length : 0;
}