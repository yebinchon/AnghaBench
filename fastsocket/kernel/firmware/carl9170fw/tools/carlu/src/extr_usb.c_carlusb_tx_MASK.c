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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct frame {TYPE_1__ dcb; } ;
struct carlu {int /*<<< orphan*/  tx_queue_lock; int /*<<< orphan*/  tx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct carlu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct carlu *ar, struct frame *frame)
{
	FUNC0(FUNC1(ar->tx_queue_lock) != 0);

	FUNC4(&frame->dcb.list, &ar->tx_queue);
	FUNC2(ar->tx_queue_lock);

	FUNC3(ar);
}