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
struct usbip_iso_packet_descriptor {int dummy; } ;
struct usbip_device {scalar_t__ side; int /*<<< orphan*/  tcp_socket; } ;
struct urb {int number_of_packets; int /*<<< orphan*/ * iso_frame_desc; TYPE_1__* dev; int /*<<< orphan*/  pipe; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPIPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SDEV_EVENT_ERROR_TCP ; 
 scalar_t__ USBIP_STUB ; 
 int /*<<< orphan*/  VDEV_EVENT_ERROR_TCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usbip_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usbip_iso_packet_descriptor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usbip_iso_packet_descriptor*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 

int FUNC8(struct usbip_device *ud, struct urb *urb)
{
	void *buff;
	struct usbip_iso_packet_descriptor *iso;
	int np = urb->number_of_packets;
	int size = np * sizeof(*iso);
	int i;
	int ret;

	if (!FUNC3(urb->pipe))
		return 0;

	/* my Bluetooth dongle gets ISO URBs which are np = 0 */
	if (np == 0) {
		/* usbip_uinfo("iso np == 0\n"); */
		/* usbip_dump_urb(urb); */
		return 0;
	}

	buff = FUNC2(size, GFP_KERNEL);
	if (!buff)
		return -ENOMEM;

	ret = FUNC7(0, ud->tcp_socket, buff, size, 0);
	if (ret != size) {
		FUNC0(&urb->dev->dev, "recv iso_frame_descriptor, %d\n",
			ret);
		FUNC1(buff);

		if (ud->side == USBIP_STUB)
			FUNC4(ud, SDEV_EVENT_ERROR_TCP);
		else
			FUNC4(ud, VDEV_EVENT_ERROR_TCP);

		return -EPIPE;
	}

	for (i = 0; i < np; i++) {
		iso = buff + (i * sizeof(*iso));

		FUNC5(iso, 0);
		FUNC6(iso, &urb->iso_frame_desc[i], 0);
	}

	FUNC1(buff);

	return ret;
}