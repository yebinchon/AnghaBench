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
struct snd_urb_ctx {TYPE_3__* urb; scalar_t__ buffer_size; TYPE_2__* ep; } ;
struct TYPE_6__ {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; } ;
struct TYPE_5__ {TYPE_1__* chip; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC2(struct snd_urb_ctx *u)
{
	if (u->buffer_size)
		FUNC0(u->ep->chip->dev, u->buffer_size,
				  u->urb->transfer_buffer,
				  u->urb->transfer_dma);
	FUNC1(u->urb);
	u->urb = NULL;
}