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
struct sisusb_usb_data {int dummy; } ;
struct sisusb_packet {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sisusb_packet*) ; 
 int /*<<< orphan*/  SISUSB_EP_BRIDGE_IN ; 
 int /*<<< orphan*/  SISUSB_EP_BRIDGE_OUT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sisusb_usb_data*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sisusb_usb_data*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sisusb_usb_data*) ; 

__attribute__((used)) static int FUNC5(struct sisusb_usb_data *sisusb, int len,
					struct sisusb_packet *packet,
					unsigned int tflags)
{
	int ret;
	ssize_t bytes_transferred = 0;
	__le32 tmp;

	if (len == 6)
		packet->data = 0;

#ifdef SISUSB_DONTSYNC
	if (!(sisusb_wait_all_out_complete(sisusb)))
		return 1;
#endif

	/* Eventually correct endianness */
	FUNC0(packet);

	/* 1. send the packet */
	ret = FUNC3(sisusb, SISUSB_EP_BRIDGE_OUT, len,
			(char *)packet, NULL, 0, &bytes_transferred, tflags, 0);

	if ((ret == 0) && (len == 6)) {

		/* 2. if packet len == 6, it means we read, so wait for 32bit
		 *    return value and write it to packet->data
		 */
		ret = FUNC2(sisusb, SISUSB_EP_BRIDGE_IN, 4,
				(char *)&tmp, NULL, &bytes_transferred, 0);

		packet->data = FUNC1(tmp);
	}

	return ret;
}