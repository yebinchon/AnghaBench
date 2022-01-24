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
struct usb_ftdi {int disconnected; int /*<<< orphan*/ * bulk_in_buffer; int /*<<< orphan*/  ftdi_list; TYPE_1__* udev; } ;
struct kref {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct usb_ftdi*) ; 
 int ftdi_instances ; 
 int /*<<< orphan*/  ftdi_module_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct usb_ftdi* FUNC2 (struct kref*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct kref *kref)
{
        struct usb_ftdi *ftdi = FUNC2(kref);
        FUNC0(&ftdi->udev->dev, "FREEING ftdi=%p\n", ftdi);
        FUNC6(ftdi->udev);
        ftdi->disconnected += 1;
        FUNC4(&ftdi_module_lock);
        FUNC3(&ftdi->ftdi_list);
        ftdi_instances -= 1;
        FUNC5(&ftdi_module_lock);
        FUNC1(ftdi->bulk_in_buffer);
        ftdi->bulk_in_buffer = NULL;
}