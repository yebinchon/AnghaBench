#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_usb_midi_out_endpoint {TYPE_2__* urbs; TYPE_3__* umidi; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__* urb; } ;
struct TYPE_4__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (void const*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct snd_usb_midi_out_endpoint* ep,
				 const void *data, int len)
{
	int err = 0;
	void *buf = FUNC2(data, len, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	FUNC0("sending", buf, len);
	if (ep->urbs[0].urb)
		err = FUNC3(ep->umidi->dev, ep->urbs[0].urb->pipe,
				   buf, len, NULL, 250);
	FUNC1(buf);
	return err;
}