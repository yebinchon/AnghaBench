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
struct urb {int /*<<< orphan*/  status; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  actual_length; struct acm_wb* context; } ;
struct acm_wb {struct acm* instance; } ;
struct acm {int /*<<< orphan*/  drain_wait; int /*<<< orphan*/  work; int /*<<< orphan*/  write_lock; TYPE_1__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct acm*) ; 
 int /*<<< orphan*/  FUNC1 (struct acm*,struct acm_wb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	struct acm_wb *wb = urb->context;
	struct acm *acm = wb->instance;
	unsigned long flags;

	if (verbose || urb->status
			|| (urb->actual_length != urb->transfer_buffer_length))
		FUNC2(&acm->data->dev, "tx %d/%d bytes -- > %d\n",
			urb->actual_length,
			urb->transfer_buffer_length,
			urb->status);

	FUNC4(&acm->write_lock, flags);
	FUNC1(acm, wb);
	FUNC5(&acm->write_lock, flags);
	if (FUNC0(acm))
		FUNC3(&acm->work);
	else
		FUNC6(&acm->drain_wait);
}