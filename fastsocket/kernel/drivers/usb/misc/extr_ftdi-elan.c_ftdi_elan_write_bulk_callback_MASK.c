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
struct usb_ftdi {TYPE_1__* udev; } ;
struct urb {int status; int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  dev; struct usb_ftdi* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int ENOENT ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct urb *urb)
{
	struct usb_ftdi *ftdi = urb->context;
	int status = urb->status;

	if (status && !(status == -ENOENT || status == -ECONNRESET ||
	    status == -ESHUTDOWN)) {
                FUNC0(&ftdi->udev->dev, "urb=%p write bulk status received: %"
                        "d\n", urb, status);
        }
        FUNC1(urb->dev, urb->transfer_buffer_length,
                urb->transfer_buffer, urb->transfer_dma);
}