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
typedef  size_t u8 ;
struct usb_device {size_t devnum; } ;
struct urb {struct u132* hcpriv; scalar_t__ setup_packet; int /*<<< orphan*/  pipe; } ;
struct u132_urbq {struct urb* urb; int /*<<< orphan*/  urb_more; } ;
struct u132_udev {int enumeration; int udev_number; size_t usb_addr; struct usb_device* usb_device; int /*<<< orphan*/ * endp_number_out; int /*<<< orphan*/ * endp_number_in; } ;
struct u132_endp {int udev_number; int /*<<< orphan*/  urb_more; scalar_t__ queue_size; int /*<<< orphan*/  queue_last; struct urb** urb_list; int /*<<< orphan*/  endp_number; } ;
struct u132_addr {int address; } ;
struct u132 {struct u132_udev* udev; struct u132_addr* addr; TYPE_1__* platform_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t ENDP_QUEUE_MASK ; 
 scalar_t__ ENDP_QUEUE_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_U132_UDEVS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct u132_urbq* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct u132*,struct u132_udev*) ; 
 int /*<<< orphan*/  FUNC4 (struct u132*,struct u132_udev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct u132 *u132,
	struct urb *urb,
	struct usb_device *usb_dev, struct u132_endp *endp, u8 usb_addr,
	u8 usb_endp)
{
	if (usb_addr == 0) {
		if (FUNC5(urb->pipe)) {
			urb->hcpriv = u132;
			if (endp->queue_size++ < ENDP_QUEUE_SIZE) {
				endp->urb_list[ENDP_QUEUE_MASK &
					endp->queue_last++] = urb;
			} else {
				struct u132_urbq *urbq =
					FUNC1(sizeof(struct u132_urbq),
					GFP_ATOMIC);
				if (urbq == NULL) {
					endp->queue_size -= 1;
					return -ENOMEM;
				} else {
					FUNC2(&urbq->urb_more,
						&endp->urb_more);
					urbq->urb = urb;
				}
			}
			return 0;
		} else {	/* usb_pipeout(urb->pipe) */
			struct u132_addr *addr = &u132->addr[usb_dev->devnum];
			int I = MAX_U132_UDEVS;
			int i = 0;
			while (--I > 0) {
				struct u132_udev *udev = &u132->udev[++i];
				if (udev->usb_device) {
					continue;
				} else {
					udev->enumeration = 1;
					u132->addr[0].address = i;
					endp->udev_number = i;
					udev->udev_number = i;
					udev->usb_addr = usb_dev->devnum;
					FUNC4(u132, udev);
					udev->endp_number_in[usb_endp] =
						endp->endp_number;
					FUNC3(u132, udev);
					udev->endp_number_out[usb_endp] =
						endp->endp_number;
					udev->usb_device = usb_dev;
					((u8 *) (urb->setup_packet))[2] =
						addr->address = i;
					FUNC3(u132, udev);
					break;
				}
			}
			if (I == 0) {
				FUNC0(&u132->platform_dev->dev, "run out of d"
					"evice space\n");
				return -EINVAL;
			}
			urb->hcpriv = u132;
			if (endp->queue_size++ < ENDP_QUEUE_SIZE) {
				endp->urb_list[ENDP_QUEUE_MASK &
					endp->queue_last++] = urb;
			} else {
				struct u132_urbq *urbq =
					FUNC1(sizeof(struct u132_urbq),
					GFP_ATOMIC);
				if (urbq == NULL) {
					endp->queue_size -= 1;
					return -ENOMEM;
				} else {
					FUNC2(&urbq->urb_more,
						&endp->urb_more);
					urbq->urb = urb;
				}
			}
			return 0;
		}
	} else {		/*(usb_addr > 0) */
		u8 address = u132->addr[usb_addr].address;
		struct u132_udev *udev = &u132->udev[address];
		urb->hcpriv = u132;
		if (udev->enumeration != 2)
			udev->enumeration = 2;
		if (endp->queue_size++ < ENDP_QUEUE_SIZE) {
			endp->urb_list[ENDP_QUEUE_MASK & endp->queue_last++] =
				urb;
		} else {
			struct u132_urbq *urbq =
				FUNC1(sizeof(struct u132_urbq), GFP_ATOMIC);
			if (urbq == NULL) {
				endp->queue_size -= 1;
				return -ENOMEM;
			} else {
				FUNC2(&urbq->urb_more, &endp->urb_more);
				urbq->urb = urb;
			}
		}
		return 0;
	}
}