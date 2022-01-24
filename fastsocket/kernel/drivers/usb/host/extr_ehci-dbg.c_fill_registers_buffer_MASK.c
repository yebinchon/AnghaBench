#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {TYPE_9__* controller; } ;
struct usb_hcd {TYPE_3__ self; int /*<<< orphan*/  state; int /*<<< orphan*/  product_desc; } ;
struct pci_dev {int dummy; } ;
struct TYPE_11__ {unsigned int complete; char* unlink; int /*<<< orphan*/  lost_iaa; int /*<<< orphan*/  reclaim; int /*<<< orphan*/  error; int /*<<< orphan*/  normal; } ;
struct ehci_hcd {int reclaim; int /*<<< orphan*/  lock; TYPE_2__ stats; TYPE_1__* debug; int /*<<< orphan*/  hcs_params; TYPE_6__* regs; TYPE_5__* caps; } ;
struct debug_buffer {char* output_buf; unsigned int alloc_size; int /*<<< orphan*/  bus; } ;
typedef  unsigned int ssize_t ;
struct TYPE_18__ {TYPE_7__* bus; } ;
struct TYPE_13__ {int /*<<< orphan*/  controller; } ;
struct TYPE_17__ {TYPE_4__ self; } ;
struct TYPE_16__ {int /*<<< orphan*/  name; } ;
struct TYPE_15__ {int /*<<< orphan*/ * port_status; int /*<<< orphan*/  frame_index; int /*<<< orphan*/  intr_enable; int /*<<< orphan*/  command; int /*<<< orphan*/  status; } ;
struct TYPE_14__ {int /*<<< orphan*/  hcc_params; int /*<<< orphan*/  hcs_params; int /*<<< orphan*/  hc_capbase; } ;
struct TYPE_10__ {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int) ; 
 struct usb_hcd* FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (char*,int,char*,unsigned int) ; 
 unsigned int FUNC7 (char*,int,char*,unsigned int) ; 
 unsigned int FUNC8 (char*,int,char*,unsigned int,unsigned int) ; 
 unsigned int FUNC9 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_9__*) ; 
 unsigned int FUNC11 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 TYPE_8__* FUNC12 (struct ehci_hcd*) ; 
 struct ehci_hcd* FUNC13 (struct usb_hcd*) ; 
 TYPE_7__ pci_bus_type ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int,int*) ; 
 unsigned int FUNC15 (char*,unsigned int,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pci_dev* FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC19(struct debug_buffer *buf)
{
	struct usb_hcd		*hcd;
	struct ehci_hcd		*ehci;
	unsigned long		flags;
	unsigned		temp, size, i;
	char			*next, scratch [80];
	static char		fmt [] = "%*s\n";
	static char		label [] = "";

	hcd = FUNC5(buf->bus);
	ehci = FUNC13 (hcd);
	next = buf->output_buf;
	size = buf->alloc_size;

	FUNC16 (&ehci->lock, flags);

	if (!FUNC1(hcd)) {
		size = FUNC15 (next, size,
			"bus %s, device %s\n"
			"%s\n"
			"SUSPENDED (no register access)\n",
			hcd->self.controller->bus->name,
			FUNC10(hcd->self.controller),
			hcd->product_desc);
		goto done;
	}

	/* Capability Registers */
	i = FUNC4(FUNC11(ehci, &ehci->caps->hc_capbase));
	temp = FUNC15 (next, size,
		"bus %s, device %s\n"
		"%s\n"
		"EHCI %x.%02x, hcd state %d\n",
		hcd->self.controller->bus->name,
		FUNC10(hcd->self.controller),
		hcd->product_desc,
		i >> 8, i & 0x0ff, hcd->state);
	size -= temp;
	next += temp;

#ifdef	CONFIG_PCI
	/* EHCI 0.96 and later may have "extended capabilities" */
	if (hcd->self.controller->bus == &pci_bus_type) {
		struct pci_dev	*pdev;
		u32		offset, cap, cap2;
		unsigned	count = 256/4;

		pdev = to_pci_dev(ehci_to_hcd(ehci)->self.controller);
		offset = HCC_EXT_CAPS(ehci_readl(ehci,
				&ehci->caps->hcc_params));
		while (offset && count--) {
			pci_read_config_dword (pdev, offset, &cap);
			switch (cap & 0xff) {
			case 1:
				temp = scnprintf (next, size,
					"ownership %08x%s%s\n", cap,
					(cap & (1 << 24)) ? " linux" : "",
					(cap & (1 << 16)) ? " firmware" : "");
				size -= temp;
				next += temp;

				offset += 4;
				pci_read_config_dword (pdev, offset, &cap2);
				temp = scnprintf (next, size,
					"SMI sts/enable 0x%08x\n", cap2);
				size -= temp;
				next += temp;
				break;
			case 0:		/* illegal reserved capability */
				cap = 0;
				/* FALLTHROUGH */
			default:		/* unknown */
				break;
			}
			temp = (cap >> 8) & 0xff;
		}
	}
#endif

	// FIXME interpret both types of params
	i = FUNC11(ehci, &ehci->caps->hcs_params);
	temp = FUNC15 (next, size, "structural params 0x%08x\n", i);
	size -= temp;
	next += temp;

	i = FUNC11(ehci, &ehci->caps->hcc_params);
	temp = FUNC15 (next, size, "capability params 0x%08x\n", i);
	size -= temp;
	next += temp;

	/* Operational Registers */
	temp = FUNC9 (scratch, sizeof scratch, label,
			FUNC11(ehci, &ehci->regs->status));
	temp = FUNC15 (next, size, fmt, temp, scratch);
	size -= temp;
	next += temp;

	temp = FUNC6 (scratch, sizeof scratch, label,
			FUNC11(ehci, &ehci->regs->command));
	temp = FUNC15 (next, size, fmt, temp, scratch);
	size -= temp;
	next += temp;

	temp = FUNC7 (scratch, sizeof scratch, label,
			FUNC11(ehci, &ehci->regs->intr_enable));
	temp = FUNC15 (next, size, fmt, temp, scratch);
	size -= temp;
	next += temp;

	temp = FUNC15 (next, size, "uframe %04x\n",
			FUNC11(ehci, &ehci->regs->frame_index));
	size -= temp;
	next += temp;

	for (i = 1; i <= FUNC3 (ehci->hcs_params); i++) {
		temp = FUNC8 (scratch, sizeof scratch, label, i,
				FUNC11(ehci,
					&ehci->regs->port_status[i - 1]));
		temp = FUNC15 (next, size, fmt, temp, scratch);
		size -= temp;
		next += temp;
		if (i == FUNC2(ehci->hcs_params) && ehci->debug) {
			temp = FUNC15 (next, size,
					"    debug control %08x\n",
					FUNC11(ehci,
						&ehci->debug->control));
			size -= temp;
			next += temp;
		}
	}

	if (ehci->reclaim) {
		temp = FUNC15(next, size, "reclaim qh %p\n", ehci->reclaim);
		size -= temp;
		next += temp;
	}

#ifdef EHCI_STATS
	temp = scnprintf (next, size,
		"irq normal %ld err %ld reclaim %ld (lost %ld)\n",
		ehci->stats.normal, ehci->stats.error, ehci->stats.reclaim,
		ehci->stats.lost_iaa);
	size -= temp;
	next += temp;

	temp = scnprintf (next, size, "complete %ld unlink %ld\n",
		ehci->stats.complete, ehci->stats.unlink);
	size -= temp;
	next += temp;
#endif

done:
	FUNC17 (&ehci->lock, flags);

	return buf->alloc_size - size;
}