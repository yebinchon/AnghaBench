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
typedef  int /*<<< orphan*/  wchar_t ;
struct usb_device {scalar_t__ state; int /*<<< orphan*/  dev; int /*<<< orphan*/  string_langid; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 unsigned char USB_DT_STRING ; 
 scalar_t__ USB_STATE_SUSPENDED ; 
 int /*<<< orphan*/  UTF16_LITTLE_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,unsigned char*) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,size_t) ; 

int FUNC6(struct usb_device *dev, int index, char *buf, size_t size)
{
	unsigned char *tbuf;
	int err;

	if (dev->state == USB_STATE_SUSPENDED)
		return -EHOSTUNREACH;
	if (size <= 0 || !buf || !index)
		return -EINVAL;
	buf[0] = 0;
	tbuf = FUNC2(256, GFP_NOIO);
	if (!tbuf)
		return -ENOMEM;

	err = FUNC3(dev, tbuf);
	if (err < 0)
		goto errout;

	err = FUNC4(dev, dev->string_langid, index, tbuf);
	if (err < 0)
		goto errout;

	size--;		/* leave room for trailing NULL char in output buffer */
	err = FUNC5((wchar_t *) &tbuf[2], (err - 2) / 2,
			UTF16_LITTLE_ENDIAN, buf, size);
	buf[err] = 0;

	if (tbuf[1] != USB_DT_STRING)
		FUNC0(&dev->dev,
			"wrong descriptor type %02x for string %d (\"%s\")\n",
			tbuf[1], index, buf);

 errout:
	FUNC1(tbuf);
	return err;
}