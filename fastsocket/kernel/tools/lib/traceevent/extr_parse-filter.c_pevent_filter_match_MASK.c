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
struct pevent_record {int dummy; } ;
struct pevent {int dummy; } ;
struct filter_type {int /*<<< orphan*/  filter; int /*<<< orphan*/  event; } ;
struct event_filter {int /*<<< orphan*/  filters; struct pevent* pevent; } ;

/* Variables and functions */
 int FILTER_MATCH ; 
 int FILTER_MISS ; 
 int FILTER_NOEXIST ; 
 int FILTER_NONE ; 
 struct filter_type* FUNC0 (struct event_filter*,int) ; 
 int FUNC1 (struct pevent*,struct pevent_record*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pevent_record*) ; 

int FUNC3(struct event_filter *filter,
			struct pevent_record *record)
{
	struct pevent *pevent = filter->pevent;
	struct filter_type *filter_type;
	int event_id;

	if (!filter->filters)
		return FILTER_NONE;

	event_id = FUNC1(pevent, record);

	filter_type = FUNC0(filter, event_id);

	if (!filter_type)
		return FILTER_NOEXIST;

	return FUNC2(filter_type->event, filter_type->filter, record) ?
		FILTER_MATCH : FILTER_MISS;
}