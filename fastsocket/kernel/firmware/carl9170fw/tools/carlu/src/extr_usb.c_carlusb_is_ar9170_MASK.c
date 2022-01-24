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
struct libusb_device_descriptor {scalar_t__ idVendor; scalar_t__ idProduct; } ;
struct TYPE_3__ {scalar_t__ idVendor; scalar_t__ idProduct; int /*<<< orphan*/  product_name; int /*<<< orphan*/  vendor_name; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_1__* dev_list ; 

__attribute__((used)) static int FUNC2(struct libusb_device_descriptor *desc)
{
	unsigned int i;

	for (i = 0; i < FUNC0(dev_list); i++) {
		if ((desc->idVendor == dev_list[i].idVendor) &&
		    (desc->idProduct == dev_list[i].idProduct)) {
			FUNC1("== found device \"%s %s\" [0x%04x:0x%04x]\n",
				dev_list[i].vendor_name, dev_list[i].product_name,
				desc->idVendor, desc->idProduct);

			return i;
		}
	}

	return -1;
}