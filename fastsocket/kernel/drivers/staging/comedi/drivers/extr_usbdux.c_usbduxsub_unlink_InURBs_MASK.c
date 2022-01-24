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
struct usbduxsub {int numOfInBuffers; TYPE_1__* interface; scalar_t__* urbIn; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct usbduxsub *usbduxsub_tmp)
{
	int i = 0;
	int err = 0;

	if (usbduxsub_tmp && usbduxsub_tmp->urbIn) {
		for (i = 0; i < usbduxsub_tmp->numOfInBuffers; i++) {
			if (usbduxsub_tmp->urbIn[i]) {
				/* We wait here until all transfers have been
				 * cancelled. */
				FUNC1(usbduxsub_tmp->urbIn[i]);
			}
			FUNC0(&usbduxsub_tmp->interface->dev,
				"comedi: usbdux: unlinked InURB %d, err=%d\n",
				i, err);
		}
	}
	return err;
}