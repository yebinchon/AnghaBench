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
struct uhci_hcd {int frame_number; scalar_t__ io_addr; int /*<<< orphan*/  frame_dma_handle; } ;

/* Variables and functions */
 int UHCI_MAX_SOF_NUMBER ; 
 scalar_t__ USBFLBASEADD ; 
 scalar_t__ USBFRNUM ; 
 int /*<<< orphan*/  USBLEGSUP ; 
 int /*<<< orphan*/  USBLEGSUP_DEFAULT ; 
 scalar_t__ USBSOF ; 
 int /*<<< orphan*/  USBSOF_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uhci_hcd*) ; 

__attribute__((used)) static void FUNC6(struct uhci_hcd *uhci)
{
	/* Set the frame length to the default: 1 ms exactly */
	FUNC0(USBSOF_DEFAULT, uhci->io_addr + USBSOF);

	/* Store the frame list base address */
	FUNC1(uhci->frame_dma_handle, uhci->io_addr + USBFLBASEADD);

	/* Set the current frame number */
	FUNC2(uhci->frame_number & UHCI_MAX_SOF_NUMBER,
			uhci->io_addr + USBFRNUM);

	/* Enable PIRQ */
	FUNC3(FUNC4(FUNC5(uhci)), USBLEGSUP,
			USBLEGSUP_DEFAULT);
}