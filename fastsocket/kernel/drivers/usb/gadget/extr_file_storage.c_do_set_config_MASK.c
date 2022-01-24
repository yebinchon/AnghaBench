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
typedef  scalar_t__ u8 ;
struct fsg_dev {scalar_t__ config; TYPE_1__* gadget; } ;
struct TYPE_2__ {int speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsg_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsg_dev*,char*,char*,scalar_t__) ; 
#define  USB_SPEED_FULL 130 
#define  USB_SPEED_HIGH 129 
#define  USB_SPEED_LOW 128 
 int FUNC2 (struct fsg_dev*,int) ; 

__attribute__((used)) static int FUNC3(struct fsg_dev *fsg, u8 new_config)
{
	int	rc = 0;

	/* Disable the single interface */
	if (fsg->config != 0) {
		FUNC0(fsg, "reset config\n");
		fsg->config = 0;
		rc = FUNC2(fsg, -1);
	}

	/* Enable the interface */
	if (new_config != 0) {
		fsg->config = new_config;
		if ((rc = FUNC2(fsg, 0)) != 0)
			fsg->config = 0;	// Reset on errors
		else {
			char *speed;

			switch (fsg->gadget->speed) {
			case USB_SPEED_LOW:	speed = "low";	break;
			case USB_SPEED_FULL:	speed = "full";	break;
			case USB_SPEED_HIGH:	speed = "high";	break;
			default: 		speed = "?";	break;
			}
			FUNC1(fsg, "%s speed config #%d\n", speed, fsg->config);
		}
	}
	return rc;
}