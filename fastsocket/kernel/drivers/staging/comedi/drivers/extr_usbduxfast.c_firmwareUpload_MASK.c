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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
struct usbduxfastsub_s {TYPE_1__* interface; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FIRMWARE_MAX_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC4 (struct usbduxfastsub_s*) ; 
 int FUNC5 (struct usbduxfastsub_s*) ; 
 int FUNC6 (struct usbduxfastsub_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct usbduxfastsub_s *usbduxfastsub,
			  const u8 * firmwareBinary, int sizeFirmware)
{
	int ret;
	uint8_t *fwBuf;

	if (!firmwareBinary)
		return 0;

	if (sizeFirmware > FIRMWARE_MAX_LEN) {
		FUNC0(&usbduxfastsub->interface->dev,
			"comedi_: usbduxfast firmware binary it too large for FX2.\n");
		return -ENOMEM;
	}

	/* we generate a local buffer for the firmware */
	fwBuf = FUNC2(sizeFirmware, GFP_KERNEL);
	if (!fwBuf) {
		FUNC0(&usbduxfastsub->interface->dev,
			"comedi_: mem alloc for firmware failed\n");
		return -ENOMEM;
	}
	FUNC3(fwBuf, firmwareBinary, sizeFirmware);

	ret = FUNC5(usbduxfastsub);
	if (ret < 0) {
		FUNC0(&usbduxfastsub->interface->dev,
			"comedi_: can not stop firmware\n");
		FUNC1(fwBuf);
		return ret;
	}

	ret = FUNC6(usbduxfastsub, fwBuf, 0, sizeFirmware);
	if (ret < 0) {
		FUNC0(&usbduxfastsub->interface->dev,
			"comedi_: firmware upload failed\n");
		FUNC1(fwBuf);
		return ret;
	}
	ret = FUNC4(usbduxfastsub);
	if (ret < 0) {
		FUNC0(&usbduxfastsub->interface->dev,
			"comedi_: can not start firmware\n");
		FUNC1(fwBuf);
		return ret;
	}
	FUNC1(fwBuf);
	return 0;
}