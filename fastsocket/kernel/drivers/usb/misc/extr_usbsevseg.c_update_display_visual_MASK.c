#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct usb_sevsegdev {int shadow_power; int textlength; unsigned char* text; int textmode; int* decimals; TYPE_1__* udev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int,int,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct usb_sevsegdev *mydev, gfp_t mf)
{
	int rc;
	int i;
	unsigned char *buffer;
	u8 decimals = 0;

	if(mydev->shadow_power != 1)
		return;

	buffer = FUNC3(MAXLEN, mf);
	if (!buffer) {
		FUNC1(&mydev->udev->dev, "out of memory\n");
		return;
	}

	/* The device is right to left, where as you write left to right */
	for (i = 0; i < mydev->textlength; i++)
		buffer[i] = mydev->text[mydev->textlength-1-i];

	rc = FUNC4(mydev->udev,
			FUNC5(mydev->udev, 0),
			0x12,
			0x48,
			(85 * 0x100) + 10, /* (write text) */
			(0 * 0x100) + mydev->textmode, /* mode  */
			buffer,
			mydev->textlength,
			2000);

	if (rc < 0)
		FUNC0(&mydev->udev->dev, "write retval = %d\n", rc);

	FUNC2(buffer);

	/* The device is right to left, where as you write left to right */
	for (i = 0; i < sizeof(mydev->decimals); i++)
		decimals |= mydev->decimals[i] << i;

	rc = FUNC4(mydev->udev,
			FUNC5(mydev->udev, 0),
			0x12,
			0x48,
			(86 * 0x100) + 10, /* (set decimal) */
			(0 * 0x100) + decimals, /* decimals */
			NULL,
			0,
			2000);

	if (rc < 0)
		FUNC0(&mydev->udev->dev, "decimal retval = %d\n", rc);
}