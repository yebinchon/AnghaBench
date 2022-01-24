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
typedef  scalar_t__ u32 ;
struct sisusb_usb_data {scalar_t__ vrambase; scalar_t__ vramsize; int /*<<< orphan*/  obufsize; int /*<<< orphan*/ * obuf; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct sisusb_usb_data*,int) ; 
 int FUNC3 (struct sisusb_usb_data*,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct sisusb_usb_data *sisusb, u32 address, int length)
{
	int ret, i;
	ssize_t j;

	if (address < sisusb->vrambase)
		return 1;

	if (address >= sisusb->vrambase + sisusb->vramsize)
		return 1;

	if (address + length > sisusb->vrambase + sisusb->vramsize)
		length = sisusb->vrambase + sisusb->vramsize - address;

	if (length <= 0)
		return 0;

	/* allocate free buffer/urb and clear the buffer */
	if ((i = FUNC1(sisusb)) < 0)
		return -EBUSY;

	FUNC0(sisusb->obuf[i], 0, sisusb->obufsize);

	/* We can write a length > buffer size here. The buffer
	 * data will simply be re-used (like a ring-buffer).
	 */
	ret = FUNC3(sisusb, address, NULL, length, NULL, i, &j);

	/* Free the buffer/urb */
	FUNC2(sisusb, i);

	return ret;
}