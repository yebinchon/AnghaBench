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
struct usb_host_endpoint {int dummy; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  wMaxPacketSize; } ;
struct urb {int dummy; } ;
struct r8a66597_pipe_info {scalar_t__ type; int dir_in; scalar_t__ timer_interval; scalar_t__ interval; int /*<<< orphan*/  pipenum; int /*<<< orphan*/  buf_bsize; int /*<<< orphan*/  bufnum; int /*<<< orphan*/  maxpacket; int /*<<< orphan*/  epnum; int /*<<< orphan*/  address; } ;
struct r8a66597 {int dummy; } ;

/* Variables and functions */
 scalar_t__ R8A66597_BULK ; 
 int /*<<< orphan*/  FUNC0 (struct r8a66597*,struct urb*,struct usb_host_endpoint*,struct r8a66597_pipe_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r8a66597*,struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC4 (struct urb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct r8a66597*,struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_endpoint_descriptor*) ; 

__attribute__((used)) static void FUNC12(struct r8a66597 *r8a66597, struct urb *urb,
			   struct usb_host_endpoint *hep,
			   struct usb_endpoint_descriptor *ep)
{
	struct r8a66597_pipe_info info;

	info.pipenum = FUNC3(r8a66597, ep);
	info.address = FUNC7(r8a66597, urb);
	info.epnum = FUNC10(ep);
	info.maxpacket = FUNC8(ep->wMaxPacketSize);
	info.type = FUNC5(FUNC11(ep));
	info.bufnum = FUNC2(info.pipenum);
	info.buf_bsize = FUNC1(info.pipenum);
	if (info.type == R8A66597_BULK) {
		info.interval = 0;
		info.timer_interval = 0;
	} else {
		info.interval = FUNC4(urb, ep->bInterval);
		info.timer_interval = FUNC6(urb, ep->bInterval);
	}
	if (FUNC9(ep))
		info.dir_in = 1;
	else
		info.dir_in = 0;

	FUNC0(r8a66597, urb, hep, &info);
}