#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wdm_device {struct wdm_device* ubuf; struct wdm_device* irq; struct wdm_device* orq; TYPE_1__* response; int /*<<< orphan*/  inbuf; int /*<<< orphan*/  wMaxCommand; int /*<<< orphan*/  intf; TYPE_2__* validity; int /*<<< orphan*/  sbuf; int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_4__ {int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wdm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wdm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wdm_device *desc)
{
	FUNC3(FUNC1(desc->intf),
			desc->wMaxPacketSize,
			desc->sbuf,
			desc->validity->transfer_dma);
	FUNC3(FUNC1(desc->intf),
			desc->wMaxCommand,
			desc->inbuf,
			desc->response->transfer_dma);
	FUNC2(desc->orq);
	FUNC2(desc->irq);
	FUNC2(desc->ubuf);
	FUNC0(desc);
	FUNC2(desc);
}