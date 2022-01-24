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
struct pevent {scalar_t__ test_filters; } ;
struct event_list {TYPE_1__* event; struct event_list* next; } ;
struct event_filter {struct pevent* pevent; } ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct event_filter*,TYPE_1__*,char const*,char**) ; 
 int FUNC2 (struct pevent*,struct event_list**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_list*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (struct event_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char**,char*,...) ; 
 char* FUNC11 (char const*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (char const*) ; 
 char* FUNC14 (char*,char*,char**) ; 

int FUNC15(struct event_filter *filter,
				 const char *filter_str,
				 char **error_str)
{
	struct pevent *pevent = filter->pevent;
	struct event_list *event;
	struct event_list *events = NULL;
	const char *filter_start;
	const char *next_event;
	char *this_event;
	char *event_name = NULL;
	char *sys_name = NULL;
	char *sp;
	int rtn = 0;
	int len;
	int ret;

	/* clear buffer to reset show error */
	FUNC7("", 0);

	if (error_str)
		*error_str = NULL;

	filter_start = FUNC11(filter_str, ':');
	if (filter_start)
		len = filter_start - filter_str;
	else
		len = FUNC13(filter_str);


	do {
		next_event = FUNC11(filter_str, ',');
		if (next_event &&
		    (!filter_start || next_event < filter_start))
			len = next_event - filter_str;
		else if (filter_start)
			len = filter_start - filter_str;
		else
			len = FUNC13(filter_str);

		this_event = FUNC5(len + 1);
		FUNC6(this_event, filter_str, len);
		this_event[len] = 0;

		if (next_event)
			next_event++;

		filter_str = next_event;

		sys_name = FUNC14(this_event, "/", &sp);
		event_name = FUNC14(NULL, "/", &sp);

		if (!sys_name) {
			FUNC10(error_str, "No filter found");
			/* This can only happen when events is NULL, but still */
			FUNC4(events);
			FUNC3(this_event);
			return -1;
		}

		/* Find this event */
		ret = FUNC2(pevent, &events, FUNC12(sys_name), FUNC12(event_name));
		if (ret < 0) {
			if (event_name)
				FUNC10(error_str,
					   "No event found under '%s.%s'",
					   sys_name, event_name);
			else
				FUNC10(error_str,
					   "No event found under '%s'",
					   sys_name);
			FUNC4(events);
			FUNC3(this_event);
			return -1;
		}
		FUNC3(this_event);
	} while (filter_str);

	/* Skip the ':' */
	if (filter_start)
		filter_start++;

	/* filter starts here */
	for (event = events; event; event = event->next) {
		ret = FUNC1(filter, event->event, filter_start,
				   error_str);
		/* Failures are returned if a parse error happened */
		if (ret < 0)
			rtn = ret;

		if (ret >= 0 && pevent->test_filters) {
			char *test;
			test = FUNC8(filter, event->event->id);
			FUNC9(" '%s: %s'\n", event->event->name, test);
			FUNC3(test);
		}
	}

	FUNC4(events);

	if (rtn >= 0 && pevent->test_filters)
		FUNC0(0);

	return rtn;
}