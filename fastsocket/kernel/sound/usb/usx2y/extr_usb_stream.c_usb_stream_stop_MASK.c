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
struct usb_stream_kernel {TYPE_1__* s; int /*<<< orphan*/ * outurb; int /*<<< orphan*/ * inurb; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int USB_STREAM_NURBS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_stream_stopped ; 

void FUNC2(struct usb_stream_kernel *sk)
{
	int u;
	if (!sk->s)
		return;
	for (u = 0; u < USB_STREAM_NURBS; ++u) {
		FUNC1(sk->inurb[u]);
		FUNC1(sk->outurb[u]);
	}
	sk->s->state = usb_stream_stopped;
	FUNC0(400);
}