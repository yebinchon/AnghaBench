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
struct usb_device {int dummy; } ;
struct ch341_private {char line_status; int /*<<< orphan*/  lock; scalar_t__ multi_status_change; } ;

/* Variables and functions */
 char CH341_BITS_MODEM_STAT ; 
 int ENOMEM ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct usb_device*,int,int,int /*<<< orphan*/ ,char*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (unsigned int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct usb_device *dev, struct ch341_private *priv)
{
	char *buffer;
	int r;
	const unsigned size = 8;
	unsigned long flags;

	FUNC1("ch341_get_status()");

	buffer = FUNC3(size, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	r = FUNC0(dev, 0x95, 0x0706, 0, buffer, size);
	if (r < 0)
		goto out;

	/* setup the private status if available */
	if (r == 2) {
		r = 0;
		FUNC4(&priv->lock, flags);
		priv->line_status = (~(*buffer)) & CH341_BITS_MODEM_STAT;
		priv->multi_status_change = 0;
		FUNC5(&priv->lock, flags);
	} else
		r = -EPROTO;

out:	FUNC2(buffer);
	return r;
}