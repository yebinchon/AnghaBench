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
struct usb_device {int quirks; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int USB_QUIRK_STRING_FETCH_255 ; 
 int FUNC0 (struct usb_device*,unsigned int,unsigned int,unsigned char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int*) ; 

__attribute__((used)) static int FUNC2(struct usb_device *dev, unsigned int langid,
			  unsigned int index, unsigned char *buf)
{
	int rc;

	/* Try to read the string descriptor by asking for the maximum
	 * possible number of bytes */
	if (dev->quirks & USB_QUIRK_STRING_FETCH_255)
		rc = -EIO;
	else
		rc = FUNC0(dev, langid, index, buf, 255);

	/* If that failed try to read the descriptor length, then
	 * ask for just that many bytes */
	if (rc < 2) {
		rc = FUNC0(dev, langid, index, buf, 2);
		if (rc == 2)
			rc = FUNC0(dev, langid, index, buf, buf[0]);
	}

	if (rc >= 2) {
		if (!buf[0] && !buf[1])
			FUNC1(buf, &rc);

		/* There might be extra junk at the end of the descriptor */
		if (buf[0] < rc)
			rc = buf[0];

		rc = rc - (rc & 1); /* force a multiple of two */
	}

	if (rc < 2)
		rc = (rc < 0 ? rc : -EINVAL);

	return rc;
}