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
struct urb {int status; scalar_t__ actual_length; } ;
struct TYPE_4__ {scalar_t__ data_length; TYPE_1__* srb; } ;
struct TYPE_3__ {int result; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int DID_ERROR ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* context ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4( struct urb* transfer )
/* Interrupt context! */
{
	int status = transfer->status;
	FUNC0();

	if ( context->data_length != transfer->actual_length ) {
		FUNC2(context->srb, context->data_length -
			       transfer->actual_length);
	} else if ( FUNC3(status) ) {
		context->srb->result = (status == -ENOENT ? DID_ABORT : DID_ERROR)<<16;
	}

	FUNC1(transfer);

	return;
}