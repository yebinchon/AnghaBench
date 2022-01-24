#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct usb_interface {TYPE_2__* altsetting; struct device dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {scalar_t__ speed; int /*<<< orphan*/  dev; } ;
struct urb {int dummy; } ;
struct TYPE_19__ {int probed; int ifnum; int high_speed; int numOfInBuffers; int numOfOutBuffers; int sizePwmBuf; scalar_t__ pwm_cmd_running; scalar_t__ ao_cmd_running; scalar_t__ ai_cmd_running; TYPE_7__* urbPwm; TYPE_6__** urbOut; struct usb_device* usbdev; TYPE_4__** urbIn; void* outBuffer; void* insnBuffer; void* inBuffer; void* dux_commands; void* dac_commands; struct usb_interface* interface; int /*<<< orphan*/  sem; } ;
struct TYPE_18__ {void* transfer_buffer; } ;
struct TYPE_17__ {int number_of_packets; int transfer_buffer_length; int interval; TYPE_5__* iso_frame_desc; int /*<<< orphan*/  complete; void* transfer_buffer; void* transfer_flags; int /*<<< orphan*/  pipe; int /*<<< orphan*/ * context; struct usb_device* dev; } ;
struct TYPE_16__ {int length; scalar_t__ offset; } ;
struct TYPE_15__ {int number_of_packets; int transfer_buffer_length; TYPE_3__* iso_frame_desc; int /*<<< orphan*/  complete; void* transfer_buffer; void* transfer_flags; int /*<<< orphan*/  pipe; int /*<<< orphan*/ * context; struct usb_device* dev; } ;
struct TYPE_14__ {int length; scalar_t__ offset; } ;
struct TYPE_12__ {int bInterfaceNumber; } ;
struct TYPE_13__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int EMFILE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FW_ACTION_HOTPLUG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ISOINEP ; 
 int /*<<< orphan*/  ISOOUTEP ; 
 int NUMOFINBUFFERSFULL ; 
 int NUMOFINBUFFERSHIGH ; 
 int NUMOFOUTBUFFERSFULL ; 
 int NUMOFOUTBUFFERSHIGH ; 
 int NUMOUTCHANNELS ; 
 int NUMUSBDUX ; 
 int SIZEINBUF ; 
 int SIZEINSNBUF ; 
 int SIZEOFDUXBUFFER ; 
 int SIZEOUTBUF ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 void* URB_ISO_ASAP ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  start_stop_sem ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct usb_device*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_interface*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usbdux_firmware_request_complete_handler ; 
 TYPE_8__* usbduxsub ; 
 int /*<<< orphan*/  usbduxsub_ai_IsocIrq ; 
 int /*<<< orphan*/  usbduxsub_ao_IsocIrq ; 

__attribute__((used)) static int FUNC15(struct usb_interface *uinterf,
			   const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC5(uinterf);
	struct device *dev = &uinterf->dev;
	int i;
	int index;
	int ret;

	FUNC0(dev, "comedi_: usbdux_: "
		"finding a free structure for the usb-device\n");

	FUNC3(&start_stop_sem);
	/* look for a free place in the usbdux array */
	index = -1;
	for (i = 0; i < NUMUSBDUX; i++) {
		if (!(usbduxsub[i].probed)) {
			index = i;
			break;
		}
	}

	/* no more space */
	if (index == -1) {
		FUNC1(dev, "Too many usbdux-devices connected.\n");
		FUNC9(&start_stop_sem);
		return -EMFILE;
	}
	FUNC0(dev, "comedi_: usbdux: "
		"usbduxsub[%d] is ready to connect to comedi.\n", index);

	FUNC4(&(usbduxsub[index].sem));
	/* save a pointer to the usb device */
	usbduxsub[index].usbdev = udev;

	/* 2.6: save the interface itself */
	usbduxsub[index].interface = uinterf;
	/* get the interface number from the interface */
	usbduxsub[index].ifnum = uinterf->altsetting->desc.bInterfaceNumber;
	/* hand the private data over to the usb subsystem */
	/* will be needed for disconnect */
	FUNC13(uinterf, &(usbduxsub[index]));

	FUNC0(dev, "comedi_: usbdux: ifnum=%d\n", usbduxsub[index].ifnum);

	/* test if it is high speed (USB 2.0) */
	usbduxsub[index].high_speed =
	    (usbduxsub[index].usbdev->speed == USB_SPEED_HIGH);

	/* create space for the commands of the DA converter */
	usbduxsub[index].dac_commands = FUNC6(NUMOUTCHANNELS, GFP_KERNEL);
	if (!usbduxsub[index].dac_commands) {
		FUNC1(dev, "comedi_: usbdux: "
			"error alloc space for dac commands\n");
		FUNC8(&(usbduxsub[index]));
		FUNC9(&start_stop_sem);
		return -ENOMEM;
	}
	/* create space for the commands going to the usb device */
	usbduxsub[index].dux_commands = FUNC6(SIZEOFDUXBUFFER, GFP_KERNEL);
	if (!usbduxsub[index].dux_commands) {
		FUNC1(dev, "comedi_: usbdux: "
			"error alloc space for dac commands\n");
		FUNC8(&(usbduxsub[index]));
		FUNC9(&start_stop_sem);
		return -ENOMEM;
	}
	/* create space for the in buffer and set it to zero */
	usbduxsub[index].inBuffer = FUNC6(SIZEINBUF, GFP_KERNEL);
	if (!(usbduxsub[index].inBuffer)) {
		FUNC1(dev, "comedi_: usbdux: "
			"could not alloc space for inBuffer\n");
		FUNC8(&(usbduxsub[index]));
		FUNC9(&start_stop_sem);
		return -ENOMEM;
	}
	/* create space of the instruction buffer */
	usbduxsub[index].insnBuffer = FUNC6(SIZEINSNBUF, GFP_KERNEL);
	if (!(usbduxsub[index].insnBuffer)) {
		FUNC1(dev, "comedi_: usbdux: "
			"could not alloc space for insnBuffer\n");
		FUNC8(&(usbduxsub[index]));
		FUNC9(&start_stop_sem);
		return -ENOMEM;
	}
	/* create space for the outbuffer */
	usbduxsub[index].outBuffer = FUNC6(SIZEOUTBUF, GFP_KERNEL);
	if (!(usbduxsub[index].outBuffer)) {
		FUNC1(dev, "comedi_: usbdux: "
			"could not alloc space for outBuffer\n");
		FUNC8(&(usbduxsub[index]));
		FUNC9(&start_stop_sem);
		return -ENOMEM;
	}
	/* setting to alternate setting 3: enabling iso ep and bulk ep. */
	i = FUNC12(usbduxsub[index].usbdev,
			      usbduxsub[index].ifnum, 3);
	if (i < 0) {
		FUNC1(dev, "comedi_: usbdux%d: "
			"could not set alternate setting 3 in high speed.\n",
			index);
		FUNC8(&(usbduxsub[index]));
		FUNC9(&start_stop_sem);
		return -ENODEV;
	}
	if (usbduxsub[index].high_speed)
		usbduxsub[index].numOfInBuffers = NUMOFINBUFFERSHIGH;
	else
		usbduxsub[index].numOfInBuffers = NUMOFINBUFFERSFULL;

	usbduxsub[index].urbIn =
	    FUNC6(sizeof(struct urb *) * usbduxsub[index].numOfInBuffers,
		    GFP_KERNEL);
	if (!(usbduxsub[index].urbIn)) {
		FUNC1(dev, "comedi_: usbdux: Could not alloc. urbIn array\n");
		FUNC8(&(usbduxsub[index]));
		FUNC9(&start_stop_sem);
		return -ENOMEM;
	}
	for (i = 0; i < usbduxsub[index].numOfInBuffers; i++) {
		/* one frame: 1ms */
		usbduxsub[index].urbIn[i] = FUNC10(1, GFP_KERNEL);
		if (usbduxsub[index].urbIn[i] == NULL) {
			FUNC1(dev, "comedi_: usbdux%d: "
				"Could not alloc. urb(%d)\n", index, i);
			FUNC8(&(usbduxsub[index]));
			FUNC9(&start_stop_sem);
			return -ENOMEM;
		}
		usbduxsub[index].urbIn[i]->dev = usbduxsub[index].usbdev;
		/* will be filled later with a pointer to the comedi-device */
		/* and ONLY then the urb should be submitted */
		usbduxsub[index].urbIn[i]->context = NULL;
		usbduxsub[index].urbIn[i]->pipe =
		    FUNC11(usbduxsub[index].usbdev, ISOINEP);
		usbduxsub[index].urbIn[i]->transfer_flags = URB_ISO_ASAP;
		usbduxsub[index].urbIn[i]->transfer_buffer =
		    FUNC6(SIZEINBUF, GFP_KERNEL);
		if (!(usbduxsub[index].urbIn[i]->transfer_buffer)) {
			FUNC1(dev, "comedi_: usbdux%d: "
				"could not alloc. transb.\n", index);
			FUNC8(&(usbduxsub[index]));
			FUNC9(&start_stop_sem);
			return -ENOMEM;
		}
		usbduxsub[index].urbIn[i]->complete = usbduxsub_ai_IsocIrq;
		usbduxsub[index].urbIn[i]->number_of_packets = 1;
		usbduxsub[index].urbIn[i]->transfer_buffer_length = SIZEINBUF;
		usbduxsub[index].urbIn[i]->iso_frame_desc[0].offset = 0;
		usbduxsub[index].urbIn[i]->iso_frame_desc[0].length = SIZEINBUF;
	}

	/* out */
	if (usbduxsub[index].high_speed)
		usbduxsub[index].numOfOutBuffers = NUMOFOUTBUFFERSHIGH;
	else
		usbduxsub[index].numOfOutBuffers = NUMOFOUTBUFFERSFULL;

	usbduxsub[index].urbOut =
	    FUNC6(sizeof(struct urb *) * usbduxsub[index].numOfOutBuffers,
		    GFP_KERNEL);
	if (!(usbduxsub[index].urbOut)) {
		FUNC1(dev, "comedi_: usbdux: "
			"Could not alloc. urbOut array\n");
		FUNC8(&(usbduxsub[index]));
		FUNC9(&start_stop_sem);
		return -ENOMEM;
	}
	for (i = 0; i < usbduxsub[index].numOfOutBuffers; i++) {
		/* one frame: 1ms */
		usbduxsub[index].urbOut[i] = FUNC10(1, GFP_KERNEL);
		if (usbduxsub[index].urbOut[i] == NULL) {
			FUNC1(dev, "comedi_: usbdux%d: "
				"Could not alloc. urb(%d)\n", index, i);
			FUNC8(&(usbduxsub[index]));
			FUNC9(&start_stop_sem);
			return -ENOMEM;
		}
		usbduxsub[index].urbOut[i]->dev = usbduxsub[index].usbdev;
		/* will be filled later with a pointer to the comedi-device */
		/* and ONLY then the urb should be submitted */
		usbduxsub[index].urbOut[i]->context = NULL;
		usbduxsub[index].urbOut[i]->pipe =
		    FUNC14(usbduxsub[index].usbdev, ISOOUTEP);
		usbduxsub[index].urbOut[i]->transfer_flags = URB_ISO_ASAP;
		usbduxsub[index].urbOut[i]->transfer_buffer =
		    FUNC6(SIZEOUTBUF, GFP_KERNEL);
		if (!(usbduxsub[index].urbOut[i]->transfer_buffer)) {
			FUNC1(dev, "comedi_: usbdux%d: "
				"could not alloc. transb.\n", index);
			FUNC8(&(usbduxsub[index]));
			FUNC9(&start_stop_sem);
			return -ENOMEM;
		}
		usbduxsub[index].urbOut[i]->complete = usbduxsub_ao_IsocIrq;
		usbduxsub[index].urbOut[i]->number_of_packets = 1;
		usbduxsub[index].urbOut[i]->transfer_buffer_length = SIZEOUTBUF;
		usbduxsub[index].urbOut[i]->iso_frame_desc[0].offset = 0;
		usbduxsub[index].urbOut[i]->iso_frame_desc[0].length =
		    SIZEOUTBUF;
		if (usbduxsub[index].high_speed) {
			/* uframes */
			usbduxsub[index].urbOut[i]->interval = 8;
		} else {
			/* frames */
			usbduxsub[index].urbOut[i]->interval = 1;
		}
	}

	/* pwm */
	if (usbduxsub[index].high_speed) {
		/* max bulk ep size in high speed */
		usbduxsub[index].sizePwmBuf = 512;
		usbduxsub[index].urbPwm = FUNC10(0, GFP_KERNEL);
		if (usbduxsub[index].urbPwm == NULL) {
			FUNC1(dev, "comedi_: usbdux%d: "
				"Could not alloc. pwm urb\n", index);
			FUNC8(&(usbduxsub[index]));
			FUNC9(&start_stop_sem);
			return -ENOMEM;
		}
		usbduxsub[index].urbPwm->transfer_buffer =
		    FUNC6(usbduxsub[index].sizePwmBuf, GFP_KERNEL);
		if (!(usbduxsub[index].urbPwm->transfer_buffer)) {
			FUNC1(dev, "comedi_: usbdux%d: "
				"could not alloc. transb. for pwm\n", index);
			FUNC8(&(usbduxsub[index]));
			FUNC9(&start_stop_sem);
			return -ENOMEM;
		}
	} else {
		usbduxsub[index].urbPwm = NULL;
		usbduxsub[index].sizePwmBuf = 0;
	}

	usbduxsub[index].ai_cmd_running = 0;
	usbduxsub[index].ao_cmd_running = 0;
	usbduxsub[index].pwm_cmd_running = 0;

	/* we've reached the bottom of the function */
	usbduxsub[index].probed = 1;
	FUNC9(&start_stop_sem);

	ret = FUNC7(THIS_MODULE,
				      FW_ACTION_HOTPLUG,
				      "usbdux_firmware.bin",
				      &udev->dev,
				      GFP_KERNEL,
				      usbduxsub + index,
				      usbdux_firmware_request_complete_handler);

	if (ret) {
		FUNC1(dev, "Could not load firmware (err=%d)\n", ret);
		return ret;
	}

	FUNC2(dev, "comedi_: usbdux%d "
		 "has been successfully initialised.\n", index);
	/* success */
	return 0;
}