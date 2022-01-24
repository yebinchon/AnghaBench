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
struct usb_led {TYPE_1__* udev; scalar_t__ green; scalar_t__ red; scalar_t__ blue; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned char BLUE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned char GREEN ; 
 unsigned char RED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int,int,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct usb_led *led)
{
	int retval;
	unsigned char color = 0x07;
	unsigned char *buffer;

	buffer = FUNC3(8, GFP_KERNEL);
	if (!buffer) {
		FUNC1(&led->udev->dev, "out of memory\n");
		return;
	}

	if (led->blue)
		color &= ~(BLUE);
	if (led->red)
		color &= ~(RED);
	if (led->green)
		color &= ~(GREEN);
	FUNC0(&led->udev->dev,
		"blue = %d, red = %d, green = %d, color = %.2x\n",
		led->blue, led->red, led->green, color);

	retval = FUNC4(led->udev,
				FUNC5(led->udev, 0),
				0x12,
				0xc8,
				(0x02 * 0x100) + 0x0a,
				(0x00 * 0x100) + color,
				buffer,	
				8,
				2000);
	if (retval)
		FUNC0(&led->udev->dev, "retval = %d\n", retval);
	FUNC2(buffer);
}