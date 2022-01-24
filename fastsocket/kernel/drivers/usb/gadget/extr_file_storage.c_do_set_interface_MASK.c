#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_endpoint_descriptor {int /*<<< orphan*/  wMaxPacketSize; } ;
struct fsg_dev {int running; int bulk_in_enabled; int bulk_out_enabled; int intr_in_enabled; int nluns; TYPE_1__* luns; TYPE_2__* intreq; int /*<<< orphan*/  intr_in; int /*<<< orphan*/  bulk_out; int /*<<< orphan*/  bulk_in; struct fsg_buffhd* buffhds; int /*<<< orphan*/  gadget; int /*<<< orphan*/  atomic_bitflags; int /*<<< orphan*/  bulk_out_maxpacket; } ;
struct fsg_buffhd {TYPE_2__* outreq; TYPE_2__* inreq; int /*<<< orphan*/  buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  complete; struct fsg_buffhd* context; int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  unit_attention_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsg_dev*,char*,...) ; 
 int /*<<< orphan*/  IGNORE_BULK_OUT ; 
 int NUM_BUFFERS ; 
 int /*<<< orphan*/  SS_RESET_OCCURRED ; 
 int FUNC1 (struct fsg_dev*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  bulk_in_complete ; 
 int /*<<< orphan*/  bulk_out_complete ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct fsg_dev*,int /*<<< orphan*/ ,struct usb_endpoint_descriptor const*) ; 
 struct usb_endpoint_descriptor* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fs_bulk_in_desc ; 
 int /*<<< orphan*/  fs_bulk_out_desc ; 
 int /*<<< orphan*/  fs_intr_in_desc ; 
 int /*<<< orphan*/  hs_bulk_in_desc ; 
 int /*<<< orphan*/  hs_bulk_out_desc ; 
 int /*<<< orphan*/  hs_intr_in_desc ; 
 int /*<<< orphan*/  intr_in_complete ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(struct fsg_dev *fsg, int altsetting)
{
	int	rc = 0;
	int	i;
	const struct usb_endpoint_descriptor	*d;

	if (fsg->running)
		FUNC0(fsg, "reset interface\n");

reset:
	/* Deallocate the requests */
	for (i = 0; i < NUM_BUFFERS; ++i) {
		struct fsg_buffhd *bh = &fsg->buffhds[i];

		if (bh->inreq) {
			FUNC8(fsg->bulk_in, bh->inreq);
			bh->inreq = NULL;
		}
		if (bh->outreq) {
			FUNC8(fsg->bulk_out, bh->outreq);
			bh->outreq = NULL;
		}
	}
	if (fsg->intreq) {
		FUNC8(fsg->intr_in, fsg->intreq);
		fsg->intreq = NULL;
	}

	/* Disable the endpoints */
	if (fsg->bulk_in_enabled) {
		FUNC7(fsg->bulk_in);
		fsg->bulk_in_enabled = 0;
	}
	if (fsg->bulk_out_enabled) {
		FUNC7(fsg->bulk_out);
		fsg->bulk_out_enabled = 0;
	}
	if (fsg->intr_in_enabled) {
		FUNC7(fsg->intr_in);
		fsg->intr_in_enabled = 0;
	}

	fsg->running = 0;
	if (altsetting < 0 || rc != 0)
		return rc;

	FUNC0(fsg, "set interface %d\n", altsetting);

	/* Enable the endpoints */
	d = FUNC4(fsg->gadget, &fs_bulk_in_desc, &hs_bulk_in_desc);
	if ((rc = FUNC3(fsg, fsg->bulk_in, d)) != 0)
		goto reset;
	fsg->bulk_in_enabled = 1;

	d = FUNC4(fsg->gadget, &fs_bulk_out_desc, &hs_bulk_out_desc);
	if ((rc = FUNC3(fsg, fsg->bulk_out, d)) != 0)
		goto reset;
	fsg->bulk_out_enabled = 1;
	fsg->bulk_out_maxpacket = FUNC5(d->wMaxPacketSize);
	FUNC2(IGNORE_BULK_OUT, &fsg->atomic_bitflags);

	if (FUNC6()) {
		d = FUNC4(fsg->gadget, &fs_intr_in_desc, &hs_intr_in_desc);
		if ((rc = FUNC3(fsg, fsg->intr_in, d)) != 0)
			goto reset;
		fsg->intr_in_enabled = 1;
	}

	/* Allocate the requests */
	for (i = 0; i < NUM_BUFFERS; ++i) {
		struct fsg_buffhd	*bh = &fsg->buffhds[i];

		if ((rc = FUNC1(fsg, fsg->bulk_in, &bh->inreq)) != 0)
			goto reset;
		if ((rc = FUNC1(fsg, fsg->bulk_out, &bh->outreq)) != 0)
			goto reset;
		bh->inreq->buf = bh->outreq->buf = bh->buf;
		bh->inreq->context = bh->outreq->context = bh;
		bh->inreq->complete = bulk_in_complete;
		bh->outreq->complete = bulk_out_complete;
	}
	if (FUNC6()) {
		if ((rc = FUNC1(fsg, fsg->intr_in, &fsg->intreq)) != 0)
			goto reset;
		fsg->intreq->complete = intr_in_complete;
	}

	fsg->running = 1;
	for (i = 0; i < fsg->nluns; ++i)
		fsg->luns[i].unit_attention_data = SS_RESET_OCCURRED;
	return rc;
}