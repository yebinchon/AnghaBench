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
struct ch341_private {int /*<<< orphan*/  line_control; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct usb_device*,int,int,int /*<<< orphan*/ ,char*,unsigned int const) ; 
 int FUNC1 (struct usb_device*,int,int,int) ; 
 int FUNC2 (struct usb_device*,struct ch341_private*) ; 
 int FUNC3 (struct usb_device*,struct ch341_private*) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (unsigned int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_device *dev, struct ch341_private *priv)
{
	char *buffer;
	int r;
	const unsigned size = 8;

	FUNC5("ch341_configure()");

	buffer = FUNC7(size, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	/* expect two bytes 0x27 0x00 */
	r = FUNC0(dev, 0x5f, 0, 0, buffer, size);
	if (r < 0)
		goto out;

	r = FUNC1(dev, 0xa1, 0, 0);
	if (r < 0)
		goto out;

	r = FUNC3(dev, priv);
	if (r < 0)
		goto out;

	/* expect two bytes 0x56 0x00 */
	r = FUNC0(dev, 0x95, 0x2518, 0, buffer, size);
	if (r < 0)
		goto out;

	r = FUNC1(dev, 0x9a, 0x2518, 0x0050);
	if (r < 0)
		goto out;

	/* expect 0xff 0xee */
	r = FUNC2(dev, priv);
	if (r < 0)
		goto out;

	r = FUNC1(dev, 0xa1, 0x501f, 0xd90a);
	if (r < 0)
		goto out;

	r = FUNC3(dev, priv);
	if (r < 0)
		goto out;

	r = FUNC4(dev, priv->line_control);
	if (r < 0)
		goto out;

	/* expect 0x9f 0xee */
	r = FUNC2(dev, priv);

out:	FUNC6(buffer);
	return r;
}