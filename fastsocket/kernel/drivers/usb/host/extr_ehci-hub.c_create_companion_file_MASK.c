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
struct ehci_hcd {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_companion ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*) ; 
 TYPE_2__* FUNC2 (struct ehci_hcd*) ; 

__attribute__((used)) static inline void FUNC3(struct ehci_hcd *ehci)
{
	int	i;

	/* with integrated TT there is no companion! */
	if (!FUNC1(ehci))
		i = FUNC0(FUNC2(ehci)->self.controller,
				       &dev_attr_companion);
}