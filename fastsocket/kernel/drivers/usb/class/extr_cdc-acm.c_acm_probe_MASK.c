#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int u8 ;
struct usb_interface {int /*<<< orphan*/  dev; TYPE_4__* cur_altsetting; TYPE_1__* altsetting; } ;
struct usb_endpoint_descriptor {int bInterval; int /*<<< orphan*/  bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int dummy; } ;
struct usb_cdc_union_desc {int bMasterInterface0; int bSlaveInterface0; } ;
struct usb_cdc_country_functional_desc {int /*<<< orphan*/  iCountryCodeRelDate; scalar_t__ bLength; int /*<<< orphan*/  wCountyCode0; } ;
struct TYPE_11__ {int bDataBits; int /*<<< orphan*/  dwDTERate; } ;
struct TYPE_18__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_16__ {unsigned long data; int /*<<< orphan*/  func; } ;
struct acm_wb {int combined_interfaces; int writesize; int minor; int ctrl_caps; int ctrlsize; int readsize; int rx_buflimit; int bInterval; int* ctrl_buffer; int /*<<< orphan*/  ctrl_dma; TYPE_6__* ctrlurb; struct acm_ru* ru; TYPE_6__* urb; struct acm_wb* wb; TYPE_10__ line; int /*<<< orphan*/  ctrlout; struct acm_wb* country_codes; int /*<<< orphan*/  country_rel_date; scalar_t__ country_code_size; struct acm_wb* instance; struct usb_device* dev; struct acm_rb* rb; TYPE_9__ port; scalar_t__ is_int_ep; int /*<<< orphan*/  rx_endpoint; int /*<<< orphan*/  mutex; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  throttle_lock; int /*<<< orphan*/  drain_wait; int /*<<< orphan*/  work; TYPE_5__ urb_task; struct usb_interface* data; struct usb_interface* control; } ;
struct acm_ru {TYPE_6__* urb; struct acm_wb* instance; } ;
struct acm_rb {void* base; int /*<<< orphan*/  dma; } ;
struct acm {int combined_interfaces; int writesize; int minor; int ctrl_caps; int ctrlsize; int readsize; int rx_buflimit; int bInterval; int* ctrl_buffer; int /*<<< orphan*/  ctrl_dma; TYPE_6__* ctrlurb; struct acm_ru* ru; TYPE_6__* urb; struct acm* wb; TYPE_10__ line; int /*<<< orphan*/  ctrlout; struct acm* country_codes; int /*<<< orphan*/  country_rel_date; scalar_t__ country_code_size; struct acm* instance; struct usb_device* dev; struct acm_rb* rb; TYPE_9__ port; scalar_t__ is_int_ep; int /*<<< orphan*/  rx_endpoint; int /*<<< orphan*/  mutex; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  throttle_lock; int /*<<< orphan*/  drain_wait; int /*<<< orphan*/  work; TYPE_5__ urb_task; struct usb_interface* data; struct usb_interface* control; } ;
struct TYPE_17__ {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct TYPE_13__ {int bNumEndpoints; scalar_t__ bInterfaceClass; } ;
struct TYPE_15__ {TYPE_3__* endpoint; TYPE_2__ desc; } ;
struct TYPE_14__ {int extralen; unsigned char* extra; struct usb_endpoint_descriptor desc; } ;
struct TYPE_12__ {unsigned char* extra; int extralen; } ;

/* Variables and functions */
 int ACM_NR ; 
 int ACM_NW ; 
 int ACM_TTY_MINORS ; 
 scalar_t__ CDC_DATA_INTERFACE_TYPE ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long NO_CAP_LINE ; 
 unsigned long NO_UNION_NORMAL ; 
 unsigned long SINGLE_RX_URB ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
#define  USB_CDC_ACM_TYPE 132 
#define  USB_CDC_CALL_MANAGEMENT_TYPE 131 
 int USB_CDC_CAP_LINE ; 
#define  USB_CDC_COUNTRY_TYPE 130 
#define  USB_CDC_HEADER_TYPE 129 
#define  USB_CDC_UNION_TYPE 128 
 unsigned char USB_DT_CS_INTERFACE ; 
 int /*<<< orphan*/  acm_ctrl_irq ; 
 int /*<<< orphan*/  acm_driver ; 
 int /*<<< orphan*/  acm_port_ops ; 
 int /*<<< orphan*/  FUNC1 (struct acm_wb*) ; 
 int /*<<< orphan*/  acm_rx_tasklet ; 
 int /*<<< orphan*/  FUNC2 (struct acm_wb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acm_wb*,TYPE_10__*) ; 
 int /*<<< orphan*/  acm_softint ; 
 struct acm_wb** acm_table ; 
 int /*<<< orphan*/  acm_tty_driver ; 
 scalar_t__ FUNC4 (struct acm_wb*) ; 
 int /*<<< orphan*/  FUNC5 (struct acm_wb*) ; 
 int /*<<< orphan*/  acm_write_bulk ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  dev_attr_bmCapabilities ; 
 int /*<<< orphan*/  dev_attr_iCountryCodeRelDate ; 
 int /*<<< orphan*/  dev_attr_wCountryCodes ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC14 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC15 (struct acm_wb*) ; 
 struct acm_wb* FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct acm_wb* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct acm_wb*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 void* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC25 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct usb_device*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,struct usb_interface*,struct acm_wb*) ; 
 int /*<<< orphan*/  FUNC28 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC29 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC30 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC31 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC32 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_6__*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct acm_wb*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_6__*,struct usb_device*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,struct acm_wb*,int) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC36 (struct usb_interface*) ; 
 struct usb_interface* FUNC37 (struct usb_device*,int) ; 
 scalar_t__ FUNC38 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC39 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (struct usb_interface*,struct acm_wb*) ; 
 int /*<<< orphan*/  FUNC42 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC43(struct usb_interface *intf,
		     const struct usb_device_id *id)
{
	struct usb_cdc_union_desc *union_header = NULL;
	struct usb_cdc_country_functional_desc *cfd = NULL;
	unsigned char *buffer = intf->altsetting->extra;
	int buflen = intf->altsetting->extralen;
	struct usb_interface *control_interface;
	struct usb_interface *data_interface;
	struct usb_endpoint_descriptor *epctrl = NULL;
	struct usb_endpoint_descriptor *epread = NULL;
	struct usb_endpoint_descriptor *epwrite = NULL;
	struct usb_device *usb_dev = FUNC14(intf);
	struct acm *acm;
	int minor;
	int ctrlsize, readsize;
	u8 *buf;
	u8 ac_management_function = 0;
	u8 call_management_function = 0;
	int call_interface_num = -1;
	int data_interface_num;
	unsigned long quirks;
	int num_rx_buf;
	int i;
	int combined_interfaces = 0;

	/* normal quirks */
	quirks = (unsigned long)id->driver_info;
	num_rx_buf = (quirks == SINGLE_RX_URB) ? 1 : ACM_NR;

	/* handle quirks deadly to normal probing*/
	if (quirks == NO_UNION_NORMAL) {
		data_interface = FUNC37(usb_dev, 1);
		control_interface = FUNC37(usb_dev, 0);
		goto skip_normal_probe;
	}

	/* normal probing*/
	if (!buffer) {
		FUNC9(&intf->dev, "Weird descriptor references\n");
		return -EINVAL;
	}

	if (!buflen) {
		if (intf->cur_altsetting->endpoint->extralen &&
				intf->cur_altsetting->endpoint->extra) {
			FUNC8(&intf->dev,
				"Seeking extra descriptors on endpoint\n");
			buflen = intf->cur_altsetting->endpoint->extralen;
			buffer = intf->cur_altsetting->endpoint->extra;
		} else {
			FUNC9(&intf->dev,
				"Zero length descriptor references\n");
			return -EINVAL;
		}
	}

	while (buflen > 0) {
		if (buffer[1] != USB_DT_CS_INTERFACE) {
			FUNC9(&intf->dev, "skipping garbage\n");
			goto next_desc;
		}

		switch (buffer[2]) {
		case USB_CDC_UNION_TYPE: /* we've found it */
			if (union_header) {
				FUNC9(&intf->dev, "More than one "
					"union descriptor, skipping ...\n");
				goto next_desc;
			}
			union_header = (struct usb_cdc_union_desc *)buffer;
			break;
		case USB_CDC_COUNTRY_TYPE: /* export through sysfs*/
			cfd = (struct usb_cdc_country_functional_desc *)buffer;
			break;
		case USB_CDC_HEADER_TYPE: /* maybe check version */
			break; /* for now we ignore it */
		case USB_CDC_ACM_TYPE:
			ac_management_function = buffer[3];
			break;
		case USB_CDC_CALL_MANAGEMENT_TYPE:
			call_management_function = buffer[3];
			call_interface_num = buffer[4];
			if ((call_management_function & 3) != 3)
				FUNC9(&intf->dev, "This device cannot do calls on its own. It is not a modem.\n");
			break;
		default:
			/* there are LOTS more CDC descriptors that
			 * could legitimately be found here.
			 */
			FUNC8(&intf->dev, "Ignoring descriptor: "
					"type %02x, length %d\n",
					buffer[2], buffer[0]);
			break;
		}
next_desc:
		buflen -= buffer[0];
		buffer += buffer[0];
	}

	if (!union_header) {
		if (call_interface_num > 0) {
			FUNC8(&intf->dev, "No union descriptor, using call management descriptor\n");
			data_interface = FUNC37(usb_dev, (data_interface_num = call_interface_num));
			control_interface = intf;
		} else {
			if (intf->cur_altsetting->desc.bNumEndpoints != 3) {
				FUNC8(&intf->dev,"No union descriptor, giving up\n");
				return -ENODEV;
			} else {
				FUNC11(&intf->dev,"No union descriptor, testing for castrated device\n");
				combined_interfaces = 1;
				control_interface = data_interface = intf;
				goto look_for_collapsed_interface;
			}
		}
	} else {
		control_interface = FUNC37(usb_dev, union_header->bMasterInterface0);
		data_interface = FUNC37(usb_dev, (data_interface_num = union_header->bSlaveInterface0));
		if (!control_interface || !data_interface) {
			FUNC8(&intf->dev, "no interfaces\n");
			return -ENODEV;
		}
	}

	if (data_interface_num != call_interface_num)
		FUNC8(&intf->dev, "Separate call control interface. That is not fully supported.\n");

	if (control_interface == data_interface) {
		/* some broken devices designed for windows work this way */
		FUNC11(&intf->dev,"Control and data interfaces are not separated!\n");
		combined_interfaces = 1;
		/* a popular other OS doesn't use it */
		quirks |= NO_CAP_LINE;
		if (data_interface->cur_altsetting->desc.bNumEndpoints != 3) {
			FUNC9(&intf->dev, "This needs exactly 3 endpoints\n");
			return -EINVAL;
		}
look_for_collapsed_interface:
		for (i = 0; i < 3; i++) {
			struct usb_endpoint_descriptor *ep;
			ep = &data_interface->cur_altsetting->endpoint[i].desc;

			if (FUNC31(ep))
				epctrl = ep;
			else if (FUNC30(ep))
				epwrite = ep;
			else if (FUNC29(ep))
				epread = ep;
			else
				return -EINVAL;
		}
		if (!epctrl || !epread || !epwrite)
			return -ENODEV;
		else
			goto made_compressed_probe;
	}

skip_normal_probe:

	/*workaround for switched interfaces */
	if (data_interface->cur_altsetting->desc.bInterfaceClass
						!= CDC_DATA_INTERFACE_TYPE) {
		if (control_interface->cur_altsetting->desc.bInterfaceClass
						== CDC_DATA_INTERFACE_TYPE) {
			struct usb_interface *t;
			FUNC8(&intf->dev,
				"Your device has switched interfaces.\n");
			t = control_interface;
			control_interface = data_interface;
			data_interface = t;
		} else {
			return -EINVAL;
		}
	}

	/* Accept probe requests only for the control interface */
	if (!combined_interfaces && intf != control_interface)
		return -ENODEV;

	if (!combined_interfaces && FUNC38(data_interface)) {
		/* valid in this context */
		FUNC8(&intf->dev, "The data interface isn't available\n");
		return -EBUSY;
	}


	if (data_interface->cur_altsetting->desc.bNumEndpoints < 2)
		return -EINVAL;

	epctrl = &control_interface->cur_altsetting->endpoint[0].desc;
	epread = &data_interface->cur_altsetting->endpoint[0].desc;
	epwrite = &data_interface->cur_altsetting->endpoint[1].desc;


	/* workaround for switched endpoints */
	if (!FUNC28(epread)) {
		/* descriptors are swapped */
		struct usb_endpoint_descriptor *t;
		FUNC8(&intf->dev,
			"The data interface has switched endpoints\n");
		t = epread;
		epread = epwrite;
		epwrite = t;
	}
made_compressed_probe:
	FUNC7("interfaces are valid");
	for (minor = 0; minor < ACM_TTY_MINORS && acm_table[minor]; minor++);

	if (minor == ACM_TTY_MINORS) {
		FUNC9(&intf->dev, "no more free acm devices\n");
		return -ENODEV;
	}

	acm = FUNC17(sizeof(struct acm), GFP_KERNEL);
	if (acm == NULL) {
		FUNC8(&intf->dev, "out of memory (acm kzalloc)\n");
		goto alloc_fail;
	}

	ctrlsize = FUNC18(epctrl->wMaxPacketSize);
	readsize = FUNC18(epread->wMaxPacketSize) *
				(quirks == SINGLE_RX_URB ? 1 : 2);
	acm->combined_interfaces = combined_interfaces;
	acm->writesize = FUNC18(epwrite->wMaxPacketSize) * 20;
	acm->control = control_interface;
	acm->data = data_interface;
	acm->minor = minor;
	acm->dev = usb_dev;
	acm->ctrl_caps = ac_management_function;
	if (quirks & NO_CAP_LINE)
		acm->ctrl_caps &= ~USB_CDC_CAP_LINE;
	acm->ctrlsize = ctrlsize;
	acm->readsize = readsize;
	acm->rx_buflimit = num_rx_buf;
	acm->urb_task.func = acm_rx_tasklet;
	acm->urb_task.data = (unsigned long) acm;
	FUNC0(&acm->work, acm_softint);
	FUNC13(&acm->drain_wait);
	FUNC21(&acm->throttle_lock);
	FUNC21(&acm->write_lock);
	FUNC21(&acm->read_lock);
	FUNC20(&acm->mutex);
	acm->rx_endpoint = FUNC39(usb_dev, epread->bEndpointAddress);
	acm->is_int_ep = FUNC32(epread);
	if (acm->is_int_ep)
		acm->bInterval = epread->bInterval;
	FUNC22(&acm->port);
	acm->port.ops = &acm_port_ops;

	buf = FUNC25(usb_dev, ctrlsize, GFP_KERNEL, &acm->ctrl_dma);
	if (!buf) {
		FUNC8(&intf->dev, "out of memory (ctrl buffer alloc)\n");
		goto alloc_fail2;
	}
	acm->ctrl_buffer = buf;

	if (FUNC4(acm) < 0) {
		FUNC8(&intf->dev, "out of memory (write buffer alloc)\n");
		goto alloc_fail4;
	}

	acm->ctrlurb = FUNC24(0, GFP_KERNEL);
	if (!acm->ctrlurb) {
		FUNC8(&intf->dev, "out of memory (ctrlurb kmalloc)\n");
		goto alloc_fail5;
	}
	for (i = 0; i < num_rx_buf; i++) {
		struct acm_ru *rcv = &(acm->ru[i]);

		rcv->urb = FUNC24(0, GFP_KERNEL);
		if (rcv->urb == NULL) {
			FUNC8(&intf->dev,
				"out of memory (read urbs usb_alloc_urb)\n");
			goto alloc_fail7;
		}

		rcv->urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		rcv->instance = acm;
	}
	for (i = 0; i < num_rx_buf; i++) {
		struct acm_rb *rb = &(acm->rb[i]);

		rb->base = FUNC25(acm->dev, readsize,
				GFP_KERNEL, &rb->dma);
		if (!rb->base) {
			FUNC8(&intf->dev,
				"out of memory (read bufs usb_buffer_alloc)\n");
			goto alloc_fail7;
		}
	}
	for (i = 0; i < ACM_NW; i++) {
		struct acm_wb *snd = &(acm->wb[i]);

		snd->urb = FUNC24(0, GFP_KERNEL);
		if (snd->urb == NULL) {
			FUNC8(&intf->dev,
				"out of memory (write urbs usb_alloc_urb)");
			goto alloc_fail7;
		}

		if (FUNC32(epwrite))
			FUNC34(snd->urb, usb_dev,
				FUNC42(usb_dev, epwrite->bEndpointAddress),
				NULL, acm->writesize, acm_write_bulk, snd, epwrite->bInterval);
		else
			FUNC33(snd->urb, usb_dev,
				FUNC42(usb_dev, epwrite->bEndpointAddress),
				NULL, acm->writesize, acm_write_bulk, snd);
		snd->urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		snd->instance = acm;
	}

	FUNC41(intf, acm);

	i = FUNC12(&intf->dev, &dev_attr_bmCapabilities);
	if (i < 0)
		goto alloc_fail8;

	if (cfd) { /* export the country data */
		acm->country_codes = FUNC16(cfd->bLength - 4, GFP_KERNEL);
		if (!acm->country_codes)
			goto skip_countries;
		acm->country_code_size = cfd->bLength - 4;
		FUNC19(acm->country_codes, (u8 *)&cfd->wCountyCode0,
							cfd->bLength - 4);
		acm->country_rel_date = cfd->iCountryCodeRelDate;

		i = FUNC12(&intf->dev, &dev_attr_wCountryCodes);
		if (i < 0) {
			FUNC15(acm->country_codes);
			goto skip_countries;
		}

		i = FUNC12(&intf->dev,
						&dev_attr_iCountryCodeRelDate);
		if (i < 0) {
			FUNC15(acm->country_codes);
			goto skip_countries;
		}
	}

skip_countries:
	FUNC34(acm->ctrlurb, usb_dev,
			 FUNC40(usb_dev, epctrl->bEndpointAddress),
			 acm->ctrl_buffer, ctrlsize, acm_ctrl_irq, acm,
			 /* works around buggy devices */
			 epctrl->bInterval ? epctrl->bInterval : 0xff);
	acm->ctrlurb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	acm->ctrlurb->transfer_dma = acm->ctrl_dma;

	FUNC10(&intf->dev, "ttyACM%d: USB ACM device\n", minor);

	FUNC2(acm, acm->ctrlout);

	acm->line.dwDTERate = FUNC6(9600);
	acm->line.bDataBits = 8;
	FUNC3(acm, &acm->line);

	FUNC27(&acm_driver, data_interface, acm);
	FUNC41(data_interface, acm);

	FUNC36(control_interface);
	FUNC23(acm_tty_driver, minor, &control_interface->dev);

	acm_table[minor] = acm;

	return 0;
alloc_fail8:
	for (i = 0; i < ACM_NW; i++)
		FUNC35(acm->wb[i].urb);
alloc_fail7:
	FUNC1(acm);
	for (i = 0; i < num_rx_buf; i++)
		FUNC35(acm->ru[i].urb);
	FUNC35(acm->ctrlurb);
alloc_fail5:
	FUNC5(acm);
alloc_fail4:
	FUNC26(usb_dev, ctrlsize, acm->ctrl_buffer, acm->ctrl_dma);
alloc_fail2:
	FUNC15(acm);
alloc_fail:
	return -ENOMEM;
}