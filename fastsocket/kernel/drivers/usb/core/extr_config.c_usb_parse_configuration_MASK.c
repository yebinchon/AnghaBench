#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct usb_interface_descriptor {int bInterfaceNumber; int /*<<< orphan*/  bLength; } ;
struct usb_interface_cache {int num_altsetting; TYPE_2__* altsetting; int /*<<< orphan*/  ref; } ;
struct usb_interface_assoc_descriptor {int dummy; } ;
struct usb_host_interface {int dummy; } ;
struct TYPE_6__ {scalar_t__ bDescriptorType; scalar_t__ bLength; int bConfigurationValue; int bNumInterfaces; int /*<<< orphan*/  wTotalLength; } ;
struct usb_host_config {unsigned char* extra; int extralen; struct usb_interface_cache** intf_cache; TYPE_3__ desc; struct usb_interface_assoc_descriptor** intf_assoc; } ;
struct usb_descriptor_header {int bLength; scalar_t__ bDescriptorType; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int bAlternateSetting; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ USB_DT_CONFIG ; 
 scalar_t__ USB_DT_CONFIG_SIZE ; 
 scalar_t__ USB_DT_DEVICE ; 
 scalar_t__ USB_DT_INTERFACE ; 
 scalar_t__ USB_DT_INTERFACE_ASSOCIATION ; 
 int /*<<< orphan*/  USB_DT_INTERFACE_SIZE ; 
 int USB_MAXALTSETTING ; 
 unsigned int USB_MAXIADS ; 
 int USB_MAXINTERFACES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,...) ; 
 int FUNC4 (unsigned char*,int,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct usb_interface_cache* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,unsigned char*,scalar_t__) ; 
 int FUNC8 (int) ; 
 int FUNC9 (struct device*,int,struct usb_host_config*,unsigned char*,int,int*,int*) ; 

__attribute__((used)) static int FUNC10(struct device *ddev, int cfgidx,
    struct usb_host_config *config, unsigned char *buffer, int size)
{
	unsigned char *buffer0 = buffer;
	int cfgno;
	int nintf, nintf_orig;
	int i, j, n;
	struct usb_interface_cache *intfc;
	unsigned char *buffer2;
	int size2;
	struct usb_descriptor_header *header;
	int len, retval;
	u8 inums[USB_MAXINTERFACES], nalts[USB_MAXINTERFACES];
	unsigned iad_num = 0;

	FUNC7(&config->desc, buffer, USB_DT_CONFIG_SIZE);
	if (config->desc.bDescriptorType != USB_DT_CONFIG ||
	    config->desc.bLength < USB_DT_CONFIG_SIZE) {
		FUNC2(ddev, "invalid descriptor for config index %d: "
		    "type = 0x%X, length = %d\n", cfgidx,
		    config->desc.bDescriptorType, config->desc.bLength);
		return -EINVAL;
	}
	cfgno = config->desc.bConfigurationValue;

	buffer += config->desc.bLength;
	size -= config->desc.bLength;

	nintf = nintf_orig = config->desc.bNumInterfaces;
	if (nintf > USB_MAXINTERFACES) {
		FUNC3(ddev, "config %d has too many interfaces: %d, "
		    "using maximum allowed: %d\n",
		    cfgno, nintf, USB_MAXINTERFACES);
		nintf = USB_MAXINTERFACES;
	}

	/* Go through the descriptors, checking their length and counting the
	 * number of altsettings for each interface */
	n = 0;
	for ((buffer2 = buffer, size2 = size);
	      size2 > 0;
	     (buffer2 += header->bLength, size2 -= header->bLength)) {

		if (size2 < sizeof(struct usb_descriptor_header)) {
			FUNC3(ddev, "config %d descriptor has %d excess "
			    "byte%s, ignoring\n",
			    cfgno, size2, FUNC8(size2));
			break;
		}

		header = (struct usb_descriptor_header *) buffer2;
		if ((header->bLength > size2) || (header->bLength < 2)) {
			FUNC3(ddev, "config %d has an invalid descriptor "
			    "of length %d, skipping remainder of the config\n",
			    cfgno, header->bLength);
			break;
		}

		if (header->bDescriptorType == USB_DT_INTERFACE) {
			struct usb_interface_descriptor *d;
			int inum;

			d = (struct usb_interface_descriptor *) header;
			if (d->bLength < USB_DT_INTERFACE_SIZE) {
				FUNC3(ddev, "config %d has an invalid "
				    "interface descriptor of length %d, "
				    "skipping\n", cfgno, d->bLength);
				continue;
			}

			inum = d->bInterfaceNumber;
			if (inum >= nintf_orig)
				FUNC3(ddev, "config %d has an invalid "
				    "interface number: %d but max is %d\n",
				    cfgno, inum, nintf_orig - 1);

			/* Have we already encountered this interface?
			 * Count its altsettings */
			for (i = 0; i < n; ++i) {
				if (inums[i] == inum)
					break;
			}
			if (i < n) {
				if (nalts[i] < 255)
					++nalts[i];
			} else if (n < USB_MAXINTERFACES) {
				inums[n] = inum;
				nalts[n] = 1;
				++n;
			}

		} else if (header->bDescriptorType ==
				USB_DT_INTERFACE_ASSOCIATION) {
			if (iad_num == USB_MAXIADS) {
				FUNC3(ddev, "found more Interface "
					       "Association Descriptors "
					       "than allocated for in "
					       "configuration %d\n", cfgno);
			} else {
				config->intf_assoc[iad_num] =
					(struct usb_interface_assoc_descriptor
					*)header;
				iad_num++;
			}

		} else if (header->bDescriptorType == USB_DT_DEVICE ||
			    header->bDescriptorType == USB_DT_CONFIG)
			FUNC3(ddev, "config %d contains an unexpected "
			    "descriptor of type 0x%X, skipping\n",
			    cfgno, header->bDescriptorType);

	}	/* for ((buffer2 = buffer, size2 = size); ...) */
	size = buffer2 - buffer;
	config->desc.wTotalLength = FUNC0(buffer2 - buffer0);

	if (n != nintf)
		FUNC3(ddev, "config %d has %d interface%s, different from "
		    "the descriptor's value: %d\n",
		    cfgno, n, FUNC8(n), nintf_orig);
	else if (n == 0)
		FUNC3(ddev, "config %d has no interfaces?\n", cfgno);
	config->desc.bNumInterfaces = nintf = n;

	/* Check for missing interface numbers */
	for (i = 0; i < nintf; ++i) {
		for (j = 0; j < nintf; ++j) {
			if (inums[j] == i)
				break;
		}
		if (j >= nintf)
			FUNC3(ddev, "config %d has no interface number "
			    "%d\n", cfgno, i);
	}

	/* Allocate the usb_interface_caches and altsetting arrays */
	for (i = 0; i < nintf; ++i) {
		j = nalts[i];
		if (j > USB_MAXALTSETTING) {
			FUNC3(ddev, "too many alternate settings for "
			    "config %d interface %d: %d, "
			    "using maximum allowed: %d\n",
			    cfgno, inums[i], j, USB_MAXALTSETTING);
			nalts[i] = j = USB_MAXALTSETTING;
		}

		len = sizeof(*intfc) + sizeof(struct usb_host_interface) * j;
		config->intf_cache[i] = intfc = FUNC6(len, GFP_KERNEL);
		if (!intfc)
			return -ENOMEM;
		FUNC5(&intfc->ref);
	}

	/* FIXME: parse the BOS descriptor */

	/* Skip over any Class Specific or Vendor Specific descriptors;
	 * find the first interface descriptor */
	config->extra = buffer;
	i = FUNC4(buffer, size, USB_DT_INTERFACE,
	    USB_DT_INTERFACE, &n);
	config->extralen = i;
	if (n > 0)
		FUNC1(ddev, "skipped %d descriptor%s after %s\n",
		    n, FUNC8(n), "configuration");
	buffer += i;
	size -= i;

	/* Parse all the interface/altsetting descriptors */
	while (size > 0) {
		retval = FUNC9(ddev, cfgno, config,
		    buffer, size, inums, nalts);
		if (retval < 0)
			return retval;

		buffer += retval;
		size -= retval;
	}

	/* Check for missing altsettings */
	for (i = 0; i < nintf; ++i) {
		intfc = config->intf_cache[i];
		for (j = 0; j < intfc->num_altsetting; ++j) {
			for (n = 0; n < intfc->num_altsetting; ++n) {
				if (intfc->altsetting[n].desc.
				    bAlternateSetting == j)
					break;
			}
			if (n >= intfc->num_altsetting)
				FUNC3(ddev, "config %d interface %d has no "
				    "altsetting %d\n", cfgno, inums[i], j);
		}
	}

	return 0;
}