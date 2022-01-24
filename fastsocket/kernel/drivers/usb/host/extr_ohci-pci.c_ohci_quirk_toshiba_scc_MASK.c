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
struct usb_hcd {int dummy; } ;
struct ohci_hcd {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  OHCI_QUIRK_BE_MMIO ; 
 struct ohci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ohci_hcd*,char*) ; 

__attribute__((used)) static int FUNC3(struct usb_hcd *hcd)
{
	struct ohci_hcd	*ohci = FUNC0 (hcd);

	/* That chip is only present in the southbridge of some
	 * cell based platforms which are supposed to select
	 * CONFIG_USB_OHCI_BIG_ENDIAN_MMIO. We verify here if
	 * that was the case though.
	 */
#ifdef CONFIG_USB_OHCI_BIG_ENDIAN_MMIO
	ohci->flags |= OHCI_QUIRK_BE_MMIO;
	ohci_dbg (ohci, "enabled big endian Toshiba quirk\n");
	return 0;
#else
	FUNC2 (ohci, "unsupported big endian Toshiba quirk\n");
	return -ENXIO;
#endif
}