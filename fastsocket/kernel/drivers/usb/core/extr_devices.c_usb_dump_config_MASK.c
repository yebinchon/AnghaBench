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
struct usb_interface_cache {int num_altsetting; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int bNumInterfaces; } ;
struct usb_host_config {struct usb_interface** interface; struct usb_interface_cache** intf_cache; TYPE_1__ desc; int /*<<< orphan*/ ** intf_assoc; } ;

/* Variables and functions */
 int USB_MAXIADS ; 
 int FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,char*,TYPE_1__*,int) ; 
 char* FUNC2 (char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int,char*,char*,struct usb_interface_cache*,struct usb_interface*,int) ; 

__attribute__((used)) static char *FUNC4(int speed, char *start, char *end,
			     const struct usb_host_config *config, int active)
{
	int i, j;
	struct usb_interface_cache *intfc;
	struct usb_interface *interface;

	if (start > end)
		return start;
	if (!config)
		/* getting these some in 2.3.7; none in 2.3.6 */
		return start + FUNC0(start, "(null Cfg. desc.)\n");
	start = FUNC1(start, end, &config->desc, active);
	for (i = 0; i < USB_MAXIADS; i++) {
		if (config->intf_assoc[i] == NULL)
			break;
		start = FUNC2(start, end,
					config->intf_assoc[i]);
	}
	for (i = 0; i < config->desc.bNumInterfaces; i++) {
		intfc = config->intf_cache[i];
		interface = config->interface[i];
		for (j = 0; j < intfc->num_altsetting; j++) {
			if (start > end)
				return start;
			start = FUNC3(speed,
				start, end, intfc, interface, j);
		}
	}
	return start;
}