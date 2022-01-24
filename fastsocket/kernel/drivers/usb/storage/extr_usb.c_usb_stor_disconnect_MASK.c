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
struct usb_interface {int dummy; } ;
struct us_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*) ; 
 struct us_data* FUNC3 (struct usb_interface*) ; 

void FUNC4(struct usb_interface *intf)
{
	struct us_data *us = FUNC3(intf);

	FUNC0("storage_disconnect() called\n");
	FUNC1(us);
	FUNC2(us);
}