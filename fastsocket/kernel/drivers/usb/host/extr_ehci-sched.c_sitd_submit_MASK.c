#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct urb {scalar_t__ interval; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  pipe; TYPE_1__* dev; } ;
struct ehci_iso_stream {scalar_t__ interval; } ;
struct ehci_hcd {int periodic_size; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  devpath; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*) ; 
 struct ehci_iso_stream* FUNC3 (struct ehci_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,struct ehci_iso_stream*) ; 
 int FUNC5 (struct ehci_hcd*,struct urb*,struct ehci_iso_stream*) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_hcd*,struct urb*,int,struct ehci_iso_stream*) ; 
 int FUNC7 (struct ehci_iso_stream*,struct ehci_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct urb*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct urb*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15 (struct ehci_hcd *ehci, struct urb *urb,
	gfp_t mem_flags)
{
	int			status = -EINVAL;
	unsigned long		flags;
	struct ehci_iso_stream	*stream;

	/* Get iso_stream head */
	stream = FUNC3 (ehci, urb);
	if (stream == NULL) {
		FUNC1 (ehci, "can't get iso stream\n");
		return -ENOMEM;
	}
	if (urb->interval != stream->interval) {
		FUNC1 (ehci, "can't change iso interval %d --> %d\n",
			stream->interval, urb->interval);
		goto done;
	}

#ifdef EHCI_URB_TRACE
	ehci_dbg (ehci,
		"submit %p dev%s ep%d%s-iso len %d\n",
		urb, urb->dev->devpath,
		usb_pipeendpoint (urb->pipe),
		usb_pipein (urb->pipe) ? "in" : "out",
		urb->transfer_buffer_length);
#endif

	/* allocate SITDs */
	status = FUNC7 (stream, ehci, urb, mem_flags);
	if (status < 0) {
		FUNC1 (ehci, "can't init sitds\n");
		goto done;
	}

	/* schedule ... need to lock */
	FUNC8 (&ehci->lock, flags);
	if (FUNC10(!FUNC0(FUNC2(ehci)))) {
		status = -ESHUTDOWN;
		goto done_not_linked;
	}
	status = FUNC11(FUNC2(ehci), urb);
	if (FUNC10(status))
		goto done_not_linked;
	status = FUNC5(ehci, urb, stream);
	if (status == 0)
		FUNC6 (ehci, urb, ehci->periodic_size << 3, stream);
	else
		FUNC12(FUNC2(ehci), urb);
done_not_linked:
	FUNC9 (&ehci->lock, flags);

done:
	if (status < 0)
		FUNC4 (ehci, stream);
	return status;
}