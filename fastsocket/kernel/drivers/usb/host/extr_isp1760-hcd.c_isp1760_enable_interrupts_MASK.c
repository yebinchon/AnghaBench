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
struct usb_hcd {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ HC_ATL_IRQ_MASK_AND_REG ; 
 scalar_t__ HC_ATL_IRQ_MASK_OR_REG ; 
 scalar_t__ HC_INT_IRQ_MASK_AND_REG ; 
 scalar_t__ HC_INT_IRQ_MASK_OR_REG ; 
 scalar_t__ HC_ISO_IRQ_MASK_AND_REG ; 
 scalar_t__ HC_ISO_IRQ_MASK_OR_REG ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct usb_hcd *hcd)
{
	FUNC0(0, hcd->regs + HC_ATL_IRQ_MASK_AND_REG);
	FUNC0(0, hcd->regs + HC_ATL_IRQ_MASK_OR_REG);
	FUNC0(0, hcd->regs + HC_INT_IRQ_MASK_AND_REG);
	FUNC0(0, hcd->regs + HC_INT_IRQ_MASK_OR_REG);
	FUNC0(0, hcd->regs + HC_ISO_IRQ_MASK_AND_REG);
	FUNC0(0xffffffff, hcd->regs + HC_ISO_IRQ_MASK_OR_REG);
	/* step 23 passed */
}