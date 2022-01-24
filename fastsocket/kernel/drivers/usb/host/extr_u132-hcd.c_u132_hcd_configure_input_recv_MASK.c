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
typedef  int /*<<< orphan*/  u8 ;
struct urb {int actual_length; int transfer_flags; struct urb* unlinked; int /*<<< orphan*/ * transfer_buffer; } ;
struct u132_ring {int /*<<< orphan*/  number; } ;
struct u132_endp {size_t usb_addr; int /*<<< orphan*/  usb_endp; struct u132_ring* ring; scalar_t__ dequeueing; struct u132* u132; } ;
struct u132 {int going; int /*<<< orphan*/  scheduler_lock; TYPE_2__* platform_dev; TYPE_1__* addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int EINTR ; 
 int ENODEV ; 
 int TD_CC_NOERROR ; 
 int TD_CC_STALL ; 
 int TD_DATAUNDERRUN ; 
 int URB_SHORT_NOT_OK ; 
 int* cc_to_error ; 
 struct urb** cc_to_text ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  u132_hcd_configure_empty_sent ; 
 int /*<<< orphan*/  FUNC4 (struct u132*,struct u132_endp*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct u132*,struct u132_endp*,struct urb*,int) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,struct u132_endp*,struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *data, struct urb *urb, u8 *buf,
	int len, int toggle_bits, int error_count, int condition_code,
	int repeat_number, int halted, int skipped, int actual, int non_null)
{
	struct u132_endp *endp = data;
	struct u132 *u132 = endp->u132;
	u8 address = u132->addr[endp->usb_addr].address;
	FUNC2(&u132->scheduler_lock);
	if (u132->going > 1) {
		FUNC0(&u132->platform_dev->dev, "device has been removed %d\n"
			, u132->going);
		FUNC3(&u132->scheduler_lock);
		FUNC4(u132, endp, urb, -ENODEV);
		return;
	} else if (endp->dequeueing) {
		endp->dequeueing = 0;
		FUNC3(&u132->scheduler_lock);
		FUNC5(u132, endp, urb, -EINTR);
		return;
	} else if (u132->going > 0) {
		FUNC0(&u132->platform_dev->dev, "device is being removed "
				"urb=%p\n", urb);
		FUNC3(&u132->scheduler_lock);
		FUNC5(u132, endp, urb, -ENODEV);
		return;
	} else if (!urb->unlinked) {
		struct u132_ring *ring = endp->ring;
		u8 *u = urb->transfer_buffer;
		u8 *b = buf;
		int L = len;

		while (L-- > 0)
			*u++ = *b++;

		urb->actual_length = len;
		if ((condition_code == TD_CC_NOERROR) || ((condition_code ==
			TD_DATAUNDERRUN) && ((urb->transfer_flags &
			URB_SHORT_NOT_OK) == 0))) {
			int retval;
			FUNC3(&u132->scheduler_lock);
			retval = FUNC6(u132->platform_dev,
				ring->number, endp, urb, address,
				endp->usb_endp, 0x3,
				u132_hcd_configure_empty_sent);
			if (retval != 0)
				FUNC5(u132, endp, urb, retval);
			return;
		} else if (condition_code == TD_CC_STALL) {
			FUNC3(&u132->scheduler_lock);
			FUNC1(&u132->platform_dev->dev, "giving back SETUP I"
				"NPUT STALL urb %p\n", urb);
			FUNC5(u132, endp, urb,
				cc_to_error[condition_code]);
			return;
		} else {
			FUNC3(&u132->scheduler_lock);
			FUNC0(&u132->platform_dev->dev, "giving back SETUP IN"
				"PUT %s urb %p\n", cc_to_text[condition_code],
				urb);
			FUNC5(u132, endp, urb,
				cc_to_error[condition_code]);
			return;
		}
	} else {
		FUNC0(&u132->platform_dev->dev, "CALLBACK called urb=%p "
				"unlinked=%d\n", urb, urb->unlinked);
		FUNC3(&u132->scheduler_lock);
		FUNC5(u132, endp, urb, 0);
		return;
	}
}