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
struct iio_shared_ev_pointer {struct iio_detected_event_list* ev_p; } ;
struct TYPE_6__ {int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct iio_event_interface {scalar_t__ current_events; scalar_t__ max_events; int /*<<< orphan*/  event_list_lock; int /*<<< orphan*/  wait; TYPE_3__ det_events; TYPE_1__ handler; } ;
struct TYPE_5__ {int id; int /*<<< orphan*/  timestamp; } ;
struct iio_detected_event_list {int /*<<< orphan*/  list; struct iio_shared_ev_pointer* shared_pointer; TYPE_2__ ev; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IIO_BUSY_BIT_POS ; 
 struct iio_detected_event_list* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct iio_event_interface *ev_int,
		     int ev_code,
		     s64 timestamp,
		     struct iio_shared_ev_pointer *
		     shared_pointer_p)
{
	struct iio_detected_event_list *ev;
	int ret = 0;

	/* Does anyone care? */
	FUNC2(&ev_int->event_list_lock);
	if (FUNC4(IIO_BUSY_BIT_POS, &ev_int->handler.flags)) {
		if (ev_int->current_events == ev_int->max_events)
			return 0;
		ev = FUNC0(sizeof(*ev), GFP_KERNEL);
		if (ev == NULL) {
			ret = -ENOMEM;
			goto error_ret;
		}
		ev->ev.id = ev_code;
		ev->ev.timestamp = timestamp;
		ev->shared_pointer = shared_pointer_p;
		if (ev->shared_pointer)
			shared_pointer_p->ev_p = ev;

		FUNC1(&ev->list, &ev_int->det_events.list);
		ev_int->current_events++;
		FUNC3(&ev_int->event_list_lock);
		FUNC5(&ev_int->wait);
	} else
		FUNC3(&ev_int->event_list_lock);

error_ret:
	return ret;
}