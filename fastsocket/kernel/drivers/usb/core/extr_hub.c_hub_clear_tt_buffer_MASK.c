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
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HUB_CLEAR_TT_BUFFER ; 
 int /*<<< orphan*/  USB_RT_PORT ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2 (struct usb_device *hdev, u16 devinfo, u16 tt)
{
	return FUNC0(hdev, FUNC1(hdev, 0),
			       HUB_CLEAR_TT_BUFFER, USB_RT_PORT, devinfo,
			       tt, NULL, 0, 1000);
}