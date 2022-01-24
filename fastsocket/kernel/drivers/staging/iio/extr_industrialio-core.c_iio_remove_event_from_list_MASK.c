#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct list_head {int dummy; } ;
struct iio_interrupt {int /*<<< orphan*/  ev_list_lock; } ;
struct iio_event_handler_list {scalar_t__ refcount; int /*<<< orphan*/  exist_lock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct iio_interrupt* FUNC5 (struct list_head*) ; 

void FUNC6(struct iio_event_handler_list *el,
			       struct list_head *head)
{
	unsigned long flags;
	struct iio_interrupt *inter = FUNC5(head);

	FUNC1(&el->exist_lock);
	el->refcount--;
	if (el->refcount == 0) {
		/* Take the event list spin lock */
		FUNC3(&inter->ev_list_lock, flags);
		FUNC0(&el->list);
		FUNC4(&inter->ev_list_lock, flags);
	}
	FUNC2(&el->exist_lock);
}