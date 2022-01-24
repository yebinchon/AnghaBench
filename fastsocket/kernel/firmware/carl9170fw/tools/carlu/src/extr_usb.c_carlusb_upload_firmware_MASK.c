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
typedef  int uint32_t ;
struct carlu {int /*<<< orphan*/  dev_list; int /*<<< orphan*/ * dev; scalar_t__ miniboot_size; int /*<<< orphan*/  fw; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 scalar_t__ FUNC0 (void*) ; 
 int LIBUSB_ERROR_TIMEOUT ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int FUNC4 (struct carlu*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,void*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct carlu *ar, bool boot)
{
	uint32_t addr = 0x200000;
	size_t len;
	void *buf;
	int ret = 0;

	FUNC5("initiating firmware image upload procedure.\n");

	buf = FUNC3(ar->fw, &len);
	if (FUNC0(buf))
		return FUNC1(buf);

	if (ar->miniboot_size) {
		FUNC5("Miniboot firmware size:%d\n", ar->miniboot_size);
		len -= ar->miniboot_size;
		buf += ar->miniboot_size;
	}

	while (len) {
		int blocklen = len > 4096 ? 4096 : len;

		ret = FUNC8(ar->dev, 0x40, 0x30, addr >> 8, 0, buf, blocklen, 1000);
		if (ret != blocklen && ret != LIBUSB_ERROR_TIMEOUT) {
			FUNC6("==>firmware upload failed (%d)\n", ret);
			return -EXIT_FAILURE;
		}

		FUNC5("uploaded %d bytes to start address 0x%04x.\n", blocklen, addr);

		buf += blocklen;
		addr += blocklen;
		len -= blocklen;
	}

	if (boot) {
		ret = FUNC8(ar->dev, 0x40, 0x31, 0, 0, NULL, 0, 5000);
		if (ret < 0) {
			FUNC6("unable to boot firmware (%d)\n", ret);
			return -EXIT_FAILURE;
		}

		/* give the firmware some time to reset & reboot */
		FUNC2(100);

		/*
		 * since the device did a full usb reset,
		 * we have to get a new "dev".
		 */
		FUNC9(ar->dev, 0);
		FUNC7(ar->dev);
		ar->dev = NULL;
		FUNC10(&ar->dev_list);

		ret = FUNC4(ar, false);
	}

	return 0;
}