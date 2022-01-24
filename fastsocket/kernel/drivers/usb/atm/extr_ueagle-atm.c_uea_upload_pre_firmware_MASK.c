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
typedef  int /*<<< orphan*/  value ;
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
struct firmware {int* data; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  F8051_USBCS ; 
 int FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int const*) ; 
 scalar_t__ FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*) ; 
 int FUNC9 (struct usb_device*,int /*<<< orphan*/ ,int,int const*) ; 

__attribute__((used)) static void FUNC10(const struct firmware *fw_entry, void *context)
{
	struct usb_device *usb = context;
	const u8 *pfw;
	u8 value;
	u32 crc = 0;
	int ret, size;

	FUNC5(usb);
	if (!fw_entry) {
		FUNC6(usb, "firmware is not available\n");
		goto err;
	}

	pfw = fw_entry->data;
	size = fw_entry->size;
	if (size < 4)
		goto err_fw_corrupted;

	crc = FUNC3(pfw);
	pfw += 4;
	size -= 4;
	if (FUNC1(0, pfw, size) != crc)
		goto err_fw_corrupted;

	/*
	 * Start to upload firmware : send reset
	 */
	value = 1;
	ret = FUNC9(usb, F8051_USBCS, sizeof(value), &value);

	if (ret < 0) {
		FUNC6(usb, "modem reset failed with error %d\n", ret);
		goto err;
	}

	while (size > 3) {
		u8 len = FUNC0(pfw);
		u16 add = FUNC2(pfw + 1);

		size -= len + 3;
		if (size < 0)
			goto err_fw_corrupted;

		ret = FUNC9(usb, add, len, pfw + 3);
		if (ret < 0) {
			FUNC6(usb, "uploading firmware data failed "
					"with error %d\n", ret);
			goto err;
		}
		pfw += len + 3;
	}

	if (size != 0)
		goto err_fw_corrupted;

	/*
	 * Tell the modem we finish : de-assert reset
	 */
	value = 0;
	ret = FUNC9(usb, F8051_USBCS, 1, &value);
	if (ret < 0)
		FUNC6(usb, "modem de-assert failed with error %d\n", ret);
	else
		FUNC7(usb, "firmware uploaded\n");

	goto err;

err_fw_corrupted:
	FUNC6(usb, "firmware is corrupted\n");
err:
	FUNC4(fw_entry);
	FUNC8(usb);
}