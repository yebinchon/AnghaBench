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
struct usb_host_config {int dummy; } ;
struct TYPE_2__ {int bNumConfigurations; } ;
struct device {int dummy; } ;
struct usb_device {scalar_t__ authorized; unsigned char** rawdescriptors; TYPE_1__ descriptor; int /*<<< orphan*/ * config; struct device dev; } ;
struct usb_config_descriptor {int /*<<< orphan*/  wTotalLength; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPIPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_DT_CONFIG ; 
 unsigned int USB_DT_CONFIG_SIZE ; 
 int USB_MAXCONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int,unsigned int) ; 
 int FUNC7 (struct usb_device*,int /*<<< orphan*/ ,unsigned int,unsigned char*,unsigned int) ; 
 int FUNC8 (struct device*,unsigned int,int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 

int FUNC9(struct usb_device *dev)
{
	struct device *ddev = &dev->dev;
	int ncfg = dev->descriptor.bNumConfigurations;
	int result = 0;
	unsigned int cfgno, length;
	unsigned char *buffer;
	unsigned char *bigbuffer;
	struct usb_config_descriptor *desc;

	cfgno = 0;
	if (dev->authorized == 0)	/* Not really an error */
		goto out_not_authorized;
	result = -ENOMEM;
	if (ncfg > USB_MAXCONFIG) {
		FUNC1(ddev, "too many configurations: %d, "
		    "using maximum allowed: %d\n", ncfg, USB_MAXCONFIG);
		dev->descriptor.bNumConfigurations = ncfg = USB_MAXCONFIG;
	}

	if (ncfg < 1) {
		FUNC0(ddev, "no configurations\n");
		return -EINVAL;
	}

	length = ncfg * sizeof(struct usb_host_config);
	dev->config = FUNC4(length, GFP_KERNEL);
	if (!dev->config)
		goto err2;

	length = ncfg * sizeof(char *);
	dev->rawdescriptors = FUNC4(length, GFP_KERNEL);
	if (!dev->rawdescriptors)
		goto err2;

	buffer = FUNC3(USB_DT_CONFIG_SIZE, GFP_KERNEL);
	if (!buffer)
		goto err2;
	desc = (struct usb_config_descriptor *)buffer;

	result = 0;
	for (; cfgno < ncfg; cfgno++) {
		/* We grab just the first descriptor so we know how long
		 * the whole configuration is */
		result = FUNC7(dev, USB_DT_CONFIG, cfgno,
		    buffer, USB_DT_CONFIG_SIZE);
		if (result < 0) {
			FUNC0(ddev, "unable to read config index %d "
			    "descriptor/%s: %d\n", cfgno, "start", result);
			if (result != -EPIPE)
				goto err;
			FUNC0(ddev, "chopping to %d config(s)\n", cfgno);
			dev->descriptor.bNumConfigurations = cfgno;
			break;
		} else if (result < 4) {
			FUNC0(ddev, "config index %d descriptor too short "
			    "(expected %i, got %i)\n", cfgno,
			    USB_DT_CONFIG_SIZE, result);
			result = -EINVAL;
			goto err;
		}
		length = FUNC6((int) FUNC5(desc->wTotalLength),
		    USB_DT_CONFIG_SIZE);

		/* Now that we know the length, get the whole thing */
		bigbuffer = FUNC3(length, GFP_KERNEL);
		if (!bigbuffer) {
			result = -ENOMEM;
			goto err;
		}
		result = FUNC7(dev, USB_DT_CONFIG, cfgno,
		    bigbuffer, length);
		if (result < 0) {
			FUNC0(ddev, "unable to read config index %d "
			    "descriptor/%s\n", cfgno, "all");
			FUNC2(bigbuffer);
			goto err;
		}
		if (result < length) {
			FUNC1(ddev, "config index %d descriptor too short "
			    "(expected %i, got %i)\n", cfgno, length, result);
			length = result;
		}

		dev->rawdescriptors[cfgno] = bigbuffer;

		result = FUNC8(&dev->dev, cfgno,
		    &dev->config[cfgno], bigbuffer, length);
		if (result < 0) {
			++cfgno;
			goto err;
		}
	}
	result = 0;

err:
	FUNC2(buffer);
out_not_authorized:
	dev->descriptor.bNumConfigurations = cfgno;
err2:
	if (result == -ENOMEM)
		FUNC0(ddev, "out of memory\n");
	return result;
}