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
struct ehci_hcd {int /*<<< orphan*/  iaa_watchdog; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_IAA_MSECS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(struct ehci_hcd *ehci)
{
	FUNC0(FUNC3(&ehci->iaa_watchdog));
	FUNC1(&ehci->iaa_watchdog,
			jiffies + FUNC2(EHCI_IAA_MSECS));
}