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
struct uhci_hcd {int /*<<< orphan*/  lock; scalar_t__ fsbr_expiring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct uhci_hcd*) ; 

__attribute__((used)) static void FUNC3(unsigned long _uhci)
{
	struct uhci_hcd *uhci = (struct uhci_hcd *) _uhci;
	unsigned long flags;

	FUNC0(&uhci->lock, flags);
	if (uhci->fsbr_expiring) {
		uhci->fsbr_expiring = 0;
		FUNC2(uhci);
	}
	FUNC1(&uhci->lock, flags);
}