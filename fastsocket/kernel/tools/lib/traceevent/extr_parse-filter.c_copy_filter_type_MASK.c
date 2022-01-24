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
struct filter_type {struct filter_arg* filter; TYPE_1__* event; } ;
struct TYPE_4__ {int value; } ;
struct filter_arg {TYPE_2__ boolean; int /*<<< orphan*/  type; } ;
struct event_format {int /*<<< orphan*/  id; } ;
struct event_filter {int /*<<< orphan*/  pevent; } ;
struct TYPE_3__ {char* system; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILTER_ARG_BOOLEAN ; 
 struct filter_type* FUNC0 (struct event_filter*,int /*<<< orphan*/ ) ; 
 struct filter_arg* FUNC1 () ; 
 char* FUNC2 (struct event_filter*,struct filter_arg*) ; 
 int /*<<< orphan*/  FUNC3 (struct event_filter*,struct event_format*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct event_format* FUNC5 (int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(struct event_filter *filter,
			     struct event_filter *source,
			     struct filter_type *filter_type)
{
	struct filter_arg *arg;
	struct event_format *event;
	const char *sys;
	const char *name;
	char *str;

	/* Can't assume that the pevent's are the same */
	sys = filter_type->event->system;
	name = filter_type->event->name;
	event = FUNC5(filter->pevent, sys, name);
	if (!event)
		return -1;

	str = FUNC2(source, filter_type->filter);
	if (!str)
		return -1;

	if (FUNC6(str, "TRUE") == 0 || FUNC6(str, "FALSE") == 0) {
		/* Add trivial event */
		arg = FUNC1();
		arg->type = FILTER_ARG_BOOLEAN;
		if (FUNC6(str, "TRUE") == 0)
			arg->boolean.value = 1;
		else
			arg->boolean.value = 0;

		filter_type = FUNC0(filter, event->id);
		filter_type->filter = arg;

		FUNC4(str);
		return 0;
	}

	FUNC3(filter, event, str, NULL);
	FUNC4(str);

	return 0;
}