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
struct pevent {int dummy; } ;
struct filter_type {struct event_format* event; struct filter_arg* filter; } ;
struct TYPE_2__ {scalar_t__ value; } ;
struct filter_arg {scalar_t__ type; TYPE_1__ boolean; } ;
struct event_format {int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/  system; } ;
struct event_filter {int filters; struct filter_type* event_filters; struct pevent* pevent; } ;
typedef  enum filter_trivial_type { ____Placeholder_filter_trivial_type } filter_trivial_type ;

/* Variables and functions */
 scalar_t__ FILTER_ARG_BOOLEAN ; 
 int FILTER_TRIVIAL_FALSE ; 
 int FILTER_TRIVIAL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct event_filter*,struct event_format*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct event_filter*,int /*<<< orphan*/ ) ; 
 struct event_format* FUNC3 (struct pevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int FUNC5(struct event_filter *dest, struct event_filter *source,
			  enum filter_trivial_type type)
{
	struct pevent *src_pevent;
	struct pevent *dest_pevent;
	struct event_format *event;
	struct filter_type *filter_type;
	struct filter_arg *arg;
	char *str;
	int i;

	src_pevent = source->pevent;
	dest_pevent = dest->pevent;

	/* Do nothing if either of the filters has nothing to filter */
	if (!dest->filters || !source->filters)
		return 0;

	for (i = 0; i < dest->filters; i++) {
		filter_type = &dest->event_filters[i];
		arg = filter_type->filter;
		if (arg->type != FILTER_ARG_BOOLEAN)
			continue;
		if ((arg->boolean.value && type == FILTER_TRIVIAL_FALSE) ||
		    (!arg->boolean.value && type == FILTER_TRIVIAL_TRUE))
			continue;

		event = filter_type->event;

		if (src_pevent != dest_pevent) {
			/* do a look up */
			event = FUNC3(src_pevent,
							  event->system,
							  event->name);
			if (!event)
				return -1;
		}

		str = FUNC2(source, event->id);
		if (!str)
			continue;

		/* Don't bother if the filter is trivial too */
		if (FUNC4(str, "TRUE") != 0 && FUNC4(str, "FALSE") != 0)
			FUNC0(dest, event, str, NULL);
		FUNC1(str);
	}
	return 0;
}