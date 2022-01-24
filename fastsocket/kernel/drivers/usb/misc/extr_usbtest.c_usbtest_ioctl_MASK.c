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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct usbtest_param {scalar_t__ iterations; int test_num; scalar_t__ length; scalar_t__ vary; scalar_t__ sglen; struct timeval duration; } ;
struct usbtest_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  iso_in; int /*<<< orphan*/  in_iso_pipe; int /*<<< orphan*/  iso_out; int /*<<< orphan*/  out_iso_pipe; TYPE_3__* info; int /*<<< orphan*/  in_pipe; int /*<<< orphan*/  out_pipe; } ;
struct usb_sg_request {int dummy; } ;
struct usb_interface {int /*<<< orphan*/  dev; TYPE_2__* altsetting; int /*<<< orphan*/  is_active; } ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
struct scatterlist {int dummy; } ;
struct TYPE_6__ {scalar_t__ alt; int /*<<< orphan*/  ctrl_out; } ;
struct TYPE_4__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (struct usbtest_dev*,char*,unsigned int) ; 
 unsigned int USBTEST_REQUEST ; 
 struct scatterlist* FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct usbtest_dev*) ; 
 int FUNC3 (struct usbtest_dev*,unsigned int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,scalar_t__) ; 
 int FUNC8 (struct usbtest_dev*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct usbtest_dev*,scalar_t__,int /*<<< orphan*/ ,struct usb_sg_request*,struct scatterlist*,scalar_t__) ; 
 int /*<<< orphan*/  realworld ; 
 int FUNC12 (struct usbtest_dev*,scalar_t__) ; 
 struct urb* FUNC13 (struct usb_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct urb*) ; 
 int FUNC15 (struct usbtest_dev*,struct urb*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int FUNC16 (struct usbtest_dev*,struct usbtest_param*) ; 
 int FUNC17 (struct usbtest_dev*,struct usbtest_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC18 (struct usbtest_dev*) ; 
 int FUNC19 (struct usbtest_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct usbtest_dev* FUNC20 (struct usb_interface*) ; 

__attribute__((used)) static int
FUNC21 (struct usb_interface *intf, unsigned int code, void *buf)
{
	struct usbtest_dev	*dev = FUNC20 (intf);
	struct usb_device	*udev = FUNC18 (dev);
	struct usbtest_param	*param = buf;
	int			retval = -EOPNOTSUPP;
	struct urb		*urb;
	struct scatterlist	*sg;
	struct usb_sg_request	req;
	struct timeval		start;
	unsigned		i;

	// FIXME USBDEVFS_CONNECTINFO doesn't say how fast the device is.

	if (code != USBTEST_REQUEST)
		return -EOPNOTSUPP;

	if (param->iterations <= 0)
		return -EINVAL;

	if (FUNC9(&dev->lock))
		return -ERESTARTSYS;

	/* FIXME: What if a system sleep starts while a test is running? */
	if (!intf->is_active) {
		FUNC10(&dev->lock);
		return -EHOSTUNREACH;
	}

	/* some devices, like ez-usb default devices, need a non-default
	 * altsetting to have any active endpoints.  some tests change
	 * altsettings; force a default so most tests don't need to check.
	 */
	if (dev->info->alt >= 0) {
		int	res;

		if (intf->altsetting->desc.bInterfaceNumber) {
			FUNC10(&dev->lock);
			return -ENODEV;
		}
		res = FUNC12 (dev, dev->info->alt);
		if (res) {
			FUNC4 (&intf->dev,
					"set altsetting to %d failed, %d\n",
					dev->info->alt, res);
			FUNC10(&dev->lock);
			return res;
		}
	}

	/*
	 * Just a bunch of test cases that every HCD is expected to handle.
	 *
	 * Some may need specific firmware, though it'd be good to have
	 * one firmware image to handle all the test cases.
	 *
	 * FIXME add more tests!  cancel requests, verify the data, control
	 * queueing, concurrent read+write threads, and so on.
	 */
	FUNC6 (&start);
	switch (param->test_num) {

	case 0:
		FUNC5(&intf->dev, "TEST 0:  NOP\n");
		retval = 0;
		break;

	/* Simple non-queued bulk I/O tests */
	case 1:
		if (dev->out_pipe == 0)
			break;
		FUNC5(&intf->dev,
				"TEST 1:  write %d bytes %u times\n",
				param->length, param->iterations);
		urb = FUNC13 (udev, dev->out_pipe, param->length);
		if (!urb) {
			retval = -ENOMEM;
			break;
		}
		// FIRMWARE:  bulk sink (maybe accepts short writes)
		retval = FUNC15(dev, urb, param->iterations, 0, 0, "test1");
		FUNC14 (urb);
		break;
	case 2:
		if (dev->in_pipe == 0)
			break;
		FUNC5(&intf->dev,
				"TEST 2:  read %d bytes %u times\n",
				param->length, param->iterations);
		urb = FUNC13 (udev, dev->in_pipe, param->length);
		if (!urb) {
			retval = -ENOMEM;
			break;
		}
		// FIRMWARE:  bulk source (maybe generates short writes)
		retval = FUNC15(dev, urb, param->iterations, 0, 0, "test2");
		FUNC14 (urb);
		break;
	case 3:
		if (dev->out_pipe == 0 || param->vary == 0)
			break;
		FUNC5(&intf->dev,
				"TEST 3:  write/%d 0..%d bytes %u times\n",
				param->vary, param->length, param->iterations);
		urb = FUNC13 (udev, dev->out_pipe, param->length);
		if (!urb) {
			retval = -ENOMEM;
			break;
		}
		// FIRMWARE:  bulk sink (maybe accepts short writes)
		retval = FUNC15(dev, urb, param->iterations, param->vary,
					0, "test3");
		FUNC14 (urb);
		break;
	case 4:
		if (dev->in_pipe == 0 || param->vary == 0)
			break;
		FUNC5(&intf->dev,
				"TEST 4:  read/%d 0..%d bytes %u times\n",
				param->vary, param->length, param->iterations);
		urb = FUNC13 (udev, dev->in_pipe, param->length);
		if (!urb) {
			retval = -ENOMEM;
			break;
		}
		// FIRMWARE:  bulk source (maybe generates short writes)
		retval = FUNC15(dev, urb, param->iterations, param->vary,
					0, "test4");
		FUNC14 (urb);
		break;

	/* Queued bulk I/O tests */
	case 5:
		if (dev->out_pipe == 0 || param->sglen == 0)
			break;
		FUNC5(&intf->dev,
			"TEST 5:  write %d sglists %d entries of %d bytes\n",
				param->iterations,
				param->sglen, param->length);
		sg = FUNC1 (param->sglen, param->length, 0);
		if (!sg) {
			retval = -ENOMEM;
			break;
		}
		// FIRMWARE:  bulk sink (maybe accepts short writes)
		retval = FUNC11(dev, param->iterations, dev->out_pipe,
				&req, sg, param->sglen);
		FUNC7 (sg, param->sglen);
		break;

	case 6:
		if (dev->in_pipe == 0 || param->sglen == 0)
			break;
		FUNC5(&intf->dev,
			"TEST 6:  read %d sglists %d entries of %d bytes\n",
				param->iterations,
				param->sglen, param->length);
		sg = FUNC1 (param->sglen, param->length, 0);
		if (!sg) {
			retval = -ENOMEM;
			break;
		}
		// FIRMWARE:  bulk source (maybe generates short writes)
		retval = FUNC11(dev, param->iterations, dev->in_pipe,
				&req, sg, param->sglen);
		FUNC7 (sg, param->sglen);
		break;
	case 7:
		if (dev->out_pipe == 0 || param->sglen == 0 || param->vary == 0)
			break;
		FUNC5(&intf->dev,
			"TEST 7:  write/%d %d sglists %d entries 0..%d bytes\n",
				param->vary, param->iterations,
				param->sglen, param->length);
		sg = FUNC1 (param->sglen, param->length, param->vary);
		if (!sg) {
			retval = -ENOMEM;
			break;
		}
		// FIRMWARE:  bulk sink (maybe accepts short writes)
		retval = FUNC11(dev, param->iterations, dev->out_pipe,
				&req, sg, param->sglen);
		FUNC7 (sg, param->sglen);
		break;
	case 8:
		if (dev->in_pipe == 0 || param->sglen == 0 || param->vary == 0)
			break;
		FUNC5(&intf->dev,
			"TEST 8:  read/%d %d sglists %d entries 0..%d bytes\n",
				param->vary, param->iterations,
				param->sglen, param->length);
		sg = FUNC1 (param->sglen, param->length, param->vary);
		if (!sg) {
			retval = -ENOMEM;
			break;
		}
		// FIRMWARE:  bulk source (maybe generates short writes)
		retval = FUNC11(dev, param->iterations, dev->in_pipe,
				&req, sg, param->sglen);
		FUNC7 (sg, param->sglen);
		break;

	/* non-queued sanity tests for control (chapter 9 subset) */
	case 9:
		retval = 0;
		FUNC5(&intf->dev,
			"TEST 9:  ch9 (subset) control tests, %d times\n",
				param->iterations);
		for (i = param->iterations; retval == 0 && i--; /* NOP */)
			retval = FUNC2 (dev);
		if (retval)
			FUNC4(&intf->dev, "ch9 subset failed, "
					"iterations left %d\n", i);
		break;

	/* queued control messaging */
	case 10:
		if (param->sglen == 0)
			break;
		retval = 0;
		FUNC5(&intf->dev,
				"TEST 10:  queue %d control calls, %d times\n",
				param->sglen,
				param->iterations);
		retval = FUNC16 (dev, param);
		break;

	/* simple non-queued unlinks (ring with one urb) */
	case 11:
		if (dev->in_pipe == 0 || !param->length)
			break;
		retval = 0;
		FUNC5(&intf->dev, "TEST 11:  unlink %d reads of %d\n",
				param->iterations, param->length);
		for (i = param->iterations; retval == 0 && i--; /* NOP */)
			retval = FUNC19 (dev, dev->in_pipe,
						param->length);
		if (retval)
			FUNC4(&intf->dev, "unlink reads failed %d, "
				"iterations left %d\n", retval, i);
		break;
	case 12:
		if (dev->out_pipe == 0 || !param->length)
			break;
		retval = 0;
		FUNC5(&intf->dev, "TEST 12:  unlink %d writes of %d\n",
				param->iterations, param->length);
		for (i = param->iterations; retval == 0 && i--; /* NOP */)
			retval = FUNC19 (dev, dev->out_pipe,
						param->length);
		if (retval)
			FUNC4(&intf->dev, "unlink writes failed %d, "
				"iterations left %d\n", retval, i);
		break;

	/* ep halt tests */
	case 13:
		if (dev->out_pipe == 0 && dev->in_pipe == 0)
			break;
		retval = 0;
		FUNC5(&intf->dev, "TEST 13:  set/clear %d halts\n",
				param->iterations);
		for (i = param->iterations; retval == 0 && i--; /* NOP */)
			retval = FUNC8 (dev);

		if (retval)
			FUNC0(dev, "halts failed, iterations left %d\n", i);
		break;

	/* control write tests */
	case 14:
		if (!dev->info->ctrl_out)
			break;
		FUNC5(&intf->dev, "TEST 14:  %d ep0out, %d..%d vary %d\n",
				param->iterations,
				realworld ? 1 : 0, param->length,
				param->vary);
		retval = FUNC3(dev, param->iterations,
				param->length, param->vary);
		break;

	/* iso write tests */
	case 15:
		if (dev->out_iso_pipe == 0 || param->sglen == 0)
			break;
		FUNC5(&intf->dev,
			"TEST 15:  write %d iso, %d entries of %d bytes\n",
				param->iterations,
				param->sglen, param->length);
		// FIRMWARE:  iso sink
		retval = FUNC17 (dev, param,
				dev->out_iso_pipe, dev->iso_out);
		break;

	/* iso read tests */
	case 16:
		if (dev->in_iso_pipe == 0 || param->sglen == 0)
			break;
		FUNC5(&intf->dev,
			"TEST 16:  read %d iso, %d entries of %d bytes\n",
				param->iterations,
				param->sglen, param->length);
		// FIRMWARE:  iso source
		retval = FUNC17 (dev, param,
				dev->in_iso_pipe, dev->iso_in);
		break;

	// FIXME unlink from queue (ring with N urbs)

	// FIXME scatterlist cancel (needs helper thread)

	}
	FUNC6 (&param->duration);
	param->duration.tv_sec -= start.tv_sec;
	param->duration.tv_usec -= start.tv_usec;
	if (param->duration.tv_usec < 0) {
		param->duration.tv_usec += 1000 * 1000;
		param->duration.tv_sec -= 1;
	}
	FUNC10(&dev->lock);
	return retval;
}