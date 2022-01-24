#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_complete_t ;
struct urb {int dummy; } ;
struct TYPE_7__ {TYPE_2__* srb; TYPE_1__* instance; } ;
struct TYPE_6__ {int result; } ;
struct TYPE_5__ {int /*<<< orphan*/  usb_dev; } ;

/* Variables and functions */
 int DID_ERROR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__* context ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ ,int,void*,unsigned int,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline
void FUNC6 (struct urb* transfer,
			int pipe,
			void* data,
			unsigned length,
			usb_complete_t callback )
/* Interrupt context! */

/* Holding transfer->context->lock! */
{
	int res;

	FUNC1();

	FUNC4(transfer,
		      context->instance->usb_dev,
		      pipe,
		      data,
		      length,
		      callback,
		      context
		);

	res = FUNC5( transfer, GFP_ATOMIC );
	if ( FUNC3(res) ) {
		FUNC0( "could not submit URB! Error was %d\n",(int)res );
		context->srb->result = DID_ERROR << 16;
		FUNC2(transfer);
	}
	return;
}