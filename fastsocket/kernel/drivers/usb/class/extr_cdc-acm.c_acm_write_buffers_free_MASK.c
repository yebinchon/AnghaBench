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
struct usb_device {int dummy; } ;
struct acm_wb {int /*<<< orphan*/  dmah; int /*<<< orphan*/  buf; } ;
struct acm {int /*<<< orphan*/  writesize; struct acm_wb* wb; int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int ACM_NW ; 
 struct usb_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct acm *acm)
{
	int i;
	struct acm_wb *wb;
	struct usb_device *usb_dev = FUNC0(acm->control);

	for (wb = &acm->wb[0], i = 0; i < ACM_NW; i++, wb++)
		FUNC1(usb_dev, acm->writesize, wb->buf, wb->dmah);
}