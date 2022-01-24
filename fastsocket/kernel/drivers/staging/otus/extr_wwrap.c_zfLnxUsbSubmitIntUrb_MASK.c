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
typedef  int /*<<< orphan*/  usb_complete_t ;
typedef  int /*<<< orphan*/  urb_t ;
typedef  int /*<<< orphan*/  u32_t ;
typedef  scalar_t__ u16_t ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ USB_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct usb_device*,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

u32_t FUNC4(urb_t *urb, struct usb_device *usb, u16_t epnum, u16_t direction,
        void *transfer_buffer, int buffer_length, usb_complete_t complete, void *context,
        u32_t interval)
{
    u32_t ret;

    if(direction == USB_DIR_OUT)
    {
        FUNC0(urb, usb, FUNC2(usb, epnum),
                transfer_buffer, buffer_length, complete, context, interval);
    }
    else
    {
        FUNC0(urb, usb, FUNC1(usb, epnum),
                transfer_buffer, buffer_length, complete, context, interval);
    }

    ret = FUNC3(urb, GFP_ATOMIC);

    return ret;
}