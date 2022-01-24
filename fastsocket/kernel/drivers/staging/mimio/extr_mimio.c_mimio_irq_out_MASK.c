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
struct urb {int /*<<< orphan*/  status; struct mimio* context; } ;
struct mimio {int /*<<< orphan*/  waitq; int /*<<< orphan*/  txlock; int /*<<< orphan*/  txflags; TYPE_1__* idev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIMIO_TXDONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct urb *urb)
{
	unsigned long flags;
	struct mimio *mimio;

	mimio = urb->context;

	if (urb->status)
		FUNC0(&mimio->idev->dev, "urb-status: %d.\n", urb->status);

	FUNC1(&mimio->txlock, flags);
	mimio->txflags |= MIMIO_TXDONE;
	FUNC2(&mimio->txlock, flags);
	FUNC4();
	FUNC3(&mimio->waitq);
}