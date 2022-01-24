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
struct usb_interface_descriptor {int bNumEndpoints; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; } ;
struct snd_usb_midi_endpoint_info {int /*<<< orphan*/  in_interval; void* in_ep; int /*<<< orphan*/  out_interval; void* out_ep; } ;
struct snd_usb_midi {struct usb_interface* iface; int /*<<< orphan*/  usb_id; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_endpoint_descriptor* FUNC1 (struct usb_host_interface*,int) ; 
 struct usb_interface_descriptor* FUNC2 (struct usb_host_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_usb_midi*) ; 
 scalar_t__ FUNC4 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC5 (struct usb_endpoint_descriptor*) ; 
 void* FUNC6 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC8 (struct usb_endpoint_descriptor*) ; 

__attribute__((used)) static int FUNC9(struct snd_usb_midi* umidi,
					struct snd_usb_midi_endpoint_info* endpoint,
					int max_endpoints)
{
	struct usb_interface* intf;
	struct usb_host_interface *hostif;
	struct usb_interface_descriptor* intfd;
	struct usb_endpoint_descriptor* epd;
	int i, out_eps = 0, in_eps = 0;

	if (FUNC0(umidi->usb_id) == 0x0582)
		FUNC3(umidi);

	if (endpoint[0].out_ep || endpoint[0].in_ep)
		return 0;

	intf = umidi->iface;
	if (!intf || intf->num_altsetting < 1)
		return -ENOENT;
	hostif = intf->cur_altsetting;
	intfd = FUNC2(hostif);

	for (i = 0; i < intfd->bNumEndpoints; ++i) {
		epd = FUNC1(hostif, i);
		if (!FUNC7(epd) &&
		    !FUNC8(epd))
			continue;
		if (out_eps < max_endpoints &&
		    FUNC5(epd)) {
			endpoint[out_eps].out_ep = FUNC6(epd);
			if (FUNC8(epd))
				endpoint[out_eps].out_interval = epd->bInterval;
			++out_eps;
		}
		if (in_eps < max_endpoints &&
		    FUNC4(epd)) {
			endpoint[in_eps].in_ep = FUNC6(epd);
			if (FUNC8(epd))
				endpoint[in_eps].in_interval = epd->bInterval;
			++in_eps;
		}
	}
	return (out_eps || in_eps) ? 0 : -ENOENT;
}