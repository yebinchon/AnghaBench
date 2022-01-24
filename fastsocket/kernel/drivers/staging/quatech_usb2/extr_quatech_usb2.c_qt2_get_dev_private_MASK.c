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
struct usb_serial {int dummy; } ;
struct quatech2_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct usb_serial*) ; 

__attribute__((used)) static inline struct quatech2_dev *FUNC1(struct usb_serial
		*serial)
{
	return (struct quatech2_dev *)FUNC0(serial);
}