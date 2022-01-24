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
struct usb_interface {int dummy; } ;
struct dlfb_data {TYPE_1__* info; struct dlfb_data* backing_buffer; int /*<<< orphan*/  screen_size; int /*<<< orphan*/  udev; int /*<<< orphan*/  tx_urb; int /*<<< orphan*/  bulk_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  screen_base; int /*<<< orphan*/  cmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlfb_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct dlfb_data* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct usb_interface *interface)
{
	struct dlfb_data *dev_info = FUNC8(interface);

	FUNC3(&dev_info->bulk_mutex);

	FUNC9(dev_info->tx_urb);
	FUNC7(dev_info->tx_urb);
	FUNC11(interface, NULL);
	FUNC10(dev_info->udev);

	if (dev_info->info) {
		FUNC6(dev_info->info);
		FUNC0(&dev_info->info->cmap);
		FUNC5(dev_info->info->screen_base, dev_info->screen_size);
		FUNC2(dev_info->backing_buffer);
		FUNC1(dev_info->info);

	}

	FUNC2(dev_info);

	FUNC4("DisplayLink device disconnected\n");
}