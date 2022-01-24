#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct usb_serial {TYPE_2__* dev; } ;
typedef  scalar_t__ __u8 ;
typedef  int __u16 ;
struct TYPE_5__ {int /*<<< orphan*/  idProduct; } ;
struct TYPE_6__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 scalar_t__ MOSCHIP_DEVICE_ID_7715 ; 
 int MOS_MAX_PORT ; 
 scalar_t__ MOS_READ ; 
 int /*<<< orphan*/  MOS_WDR_TIMEOUT ; 
 scalar_t__ MOS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,unsigned int,scalar_t__,scalar_t__,int,int,void*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_serial *serial, __u8 request, __u16 value,
			__u16 index, void *data)
{
	int status;
	unsigned int pipe;
	u16 product = FUNC1(serial->dev->descriptor.idProduct);
	__u8 requesttype;
	__u16 size = 0x0000;

	if (value < MOS_MAX_PORT) {
		if (product == MOSCHIP_DEVICE_ID_7715)
			value = value*0x100+0x100;
		else
			value = value*0x100+0x200;
	} else {
		value = 0x0000;
		if ((product == MOSCHIP_DEVICE_ID_7715) &&
		    (index != 0x08)) {
			FUNC0("serial->product== MOSCHIP_DEVICE_ID_7715");
			/* index = 0x01 ; */
		}
	}

	if (request == MOS_WRITE) {
		request = (__u8)MOS_WRITE;
		requesttype = (__u8)0x40;
		value  = value + (__u16)*((unsigned char *)data);
		data = NULL;
		pipe = FUNC4(serial->dev, 0);
	} else {
		request = (__u8)MOS_READ;
		requesttype = (__u8)0xC0;
		size = 0x01;
		pipe = FUNC3(serial->dev, 0);
	}

	status = FUNC2(serial->dev, pipe, request, requesttype,
				 value, index, data, size, MOS_WDR_TIMEOUT);

	if (status < 0)
		FUNC0("Command Write failed Value %x index %x\n", value, index);

	return status;
}