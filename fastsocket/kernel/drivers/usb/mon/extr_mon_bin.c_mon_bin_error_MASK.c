#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct urb {TYPE_3__* dev; TYPE_1__* ep; } ;
struct mon_reader_bin {int /*<<< orphan*/  b_wait; int /*<<< orphan*/  b_lock; } ;
struct mon_bin_hdr {char type; unsigned long id; int status; char flag_setup; char flag_data; int /*<<< orphan*/  busnum; int /*<<< orphan*/  devnum; int /*<<< orphan*/  epnum; int /*<<< orphan*/  xfer_type; } ;
struct TYPE_6__ {TYPE_2__* bus; int /*<<< orphan*/  devnum; } ;
struct TYPE_5__ {int /*<<< orphan*/  busnum; } ;
struct TYPE_4__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 struct mon_bin_hdr* FUNC0 (struct mon_reader_bin*,unsigned int) ; 
 int /*<<< orphan*/  PKT_SIZE ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC1 (struct mon_bin_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct mon_reader_bin*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * xfer_to_pipe ; 

__attribute__((used)) static void FUNC9(void *data, struct urb *urb, int error)
{
	struct mon_reader_bin *rp = data;
	unsigned long flags;
	unsigned int offset;
	struct mon_bin_hdr *ep;

	FUNC3(&rp->b_lock, flags);

	offset = FUNC2(rp, PKT_SIZE);
	if (offset == ~0) {
		/* Not incrementing cnt_lost. Just because. */
		FUNC4(&rp->b_lock, flags);
		return;
	}

	ep = FUNC0(rp, offset);

	FUNC1(ep, 0, PKT_SIZE);
	ep->type = 'E';
	ep->xfer_type = xfer_to_pipe[FUNC6(&urb->ep->desc)];
	ep->epnum = FUNC7(urb) ? USB_DIR_IN : 0;
	ep->epnum |= FUNC5(&urb->ep->desc);
	ep->devnum = urb->dev->devnum;
	ep->busnum = urb->dev->bus->busnum;
	ep->id = (unsigned long) urb;
	ep->status = error;

	ep->flag_setup = '-';
	ep->flag_data = 'E';

	FUNC4(&rp->b_lock, flags);

	FUNC8(&rp->b_wait);
}