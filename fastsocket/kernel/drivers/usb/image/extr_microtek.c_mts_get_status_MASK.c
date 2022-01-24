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
struct urb {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  scsi_status; TYPE_1__* instance; } ;
struct TYPE_3__ {int /*<<< orphan*/  ep_response; int /*<<< orphan*/  usb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* context ; 
 int /*<<< orphan*/  FUNC1 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mts_transfer_done ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3( struct urb *transfer )
/* Interrupt context! */
{
	FUNC0();

	FUNC1(transfer,
			   FUNC2(context->instance->usb_dev,
					   context->instance->ep_response),
			   context->scsi_status,
			   1,
			   mts_transfer_done );
}