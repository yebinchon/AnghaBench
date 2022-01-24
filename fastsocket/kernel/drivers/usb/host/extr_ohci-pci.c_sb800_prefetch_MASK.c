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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct ohci_hcd {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ohci_hcd *ohci, int on)
{
	struct pci_dev *pdev;
	u16 misc;

	pdev = FUNC3(FUNC0(ohci)->self.controller);
	FUNC1(pdev, 0x50, &misc);
	if (on == 0)
		FUNC2(pdev, 0x50, misc & 0xfcff);
	else
		FUNC2(pdev, 0x50, misc | 0x0300);
}