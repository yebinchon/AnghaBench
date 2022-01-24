#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uhci_hcd {int /*<<< orphan*/  resuming_ports; int /*<<< orphan*/  port_c_suspend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SUSPEND_BITS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct uhci_hcd *uhci, int port,
		unsigned long port_addr)
{
	int status;
	int i;

	if (FUNC2(port_addr) & SUSPEND_BITS) {
		FUNC0(SUSPEND_BITS);
		if (FUNC4(port, &uhci->resuming_ports))
			FUNC3(port, &uhci->port_c_suspend);

		/* The controller won't actually turn off the RD bit until
		 * it has had a chance to send a low-speed EOP sequence,
		 * which is supposed to take 3 bit times (= 2 microseconds).
		 * Experiments show that some controllers take longer, so
		 * we'll poll for completion. */
		for (i = 0; i < 10; ++i) {
			if (!(FUNC2(port_addr) & SUSPEND_BITS))
				break;
			FUNC5(1);
		}
	}
	FUNC1(port, &uhci->resuming_ports);
}