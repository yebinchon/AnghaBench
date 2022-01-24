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
struct perf_session {int /*<<< orphan*/  pevent; struct perf_evlist* evlist; } ;
struct perf_evsel_str_handler {int /*<<< orphan*/ * handler; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/ * func; } ;
struct perf_evsel {TYPE_1__ handler; } ;
struct perf_evlist {int dummy; } ;
struct event_format {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct perf_evsel* FUNC1 (struct perf_evlist*,int /*<<< orphan*/ ) ; 
 struct event_format* FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct perf_session *session,
					     const struct perf_evsel_str_handler *assocs,
					     size_t nr_assocs)
{
	struct perf_evlist *evlist = session->evlist;
	struct event_format *format;
	struct perf_evsel *evsel;
	char *tracepoint, *name;
	size_t i;
	int err;

	for (i = 0; i < nr_assocs; i++) {
		err = -ENOMEM;
		tracepoint = FUNC4(assocs[i].name);
		if (tracepoint == NULL)
			goto out;

		err = -ENOENT;
		name = FUNC3(tracepoint, ':');
		if (name == NULL)
			goto out_free;

		*name++ = '\0';
		format = FUNC2(session->pevent,
						   tracepoint, name);
		if (format == NULL) {
			/*
			 * Adding a handler for an event not in the session,
			 * just ignore it.
			 */
			goto next;
		}

		evsel = FUNC1(evlist, format->id);
		if (evsel == NULL)
			goto next;

		err = -EEXIST;
		if (evsel->handler.func != NULL)
			goto out_free;
		evsel->handler.func = assocs[i].handler;
next:
		FUNC0(tracepoint);
	}

	err = 0;
out:
	return err;

out_free:
	FUNC0(tracepoint);
	goto out;
}