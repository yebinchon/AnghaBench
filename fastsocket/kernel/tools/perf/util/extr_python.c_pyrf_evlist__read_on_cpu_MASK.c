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
typedef  union perf_event {int dummy; } perf_event ;
struct perf_evlist {int dummy; } ;
struct pyrf_evlist {struct perf_evlist evlist; } ;
struct pyrf_event {int /*<<< orphan*/  sample; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int*,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  PyExc_OSError ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 union perf_event* FUNC4 (struct perf_evlist*,int) ; 
 int FUNC5 (struct perf_evlist*,union perf_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (union perf_event*) ; 

__attribute__((used)) static PyObject *FUNC7(struct pyrf_evlist *pevlist,
					  PyObject *args, PyObject *kwargs)
{
	struct perf_evlist *evlist = &pevlist->evlist;
	union perf_event *event;
	int sample_id_all = 1, cpu;
	static char *kwlist[] = { "cpu", "sample_id_all", NULL };
	int err;

	if (!FUNC0(args, kwargs, "i|i", kwlist,
					 &cpu, &sample_id_all))
		return NULL;

	event = FUNC4(evlist, cpu);
	if (event != NULL) {
		PyObject *pyevent = FUNC6(event);
		struct pyrf_event *pevent = (struct pyrf_event *)pyevent;

		if (pyevent == NULL)
			return FUNC2();

		err = FUNC5(evlist, event, &pevent->sample);
		if (err)
			return FUNC1(PyExc_OSError,
					    "perf: can't parse sample, err=%d", err);
		return pyevent;
	}

	FUNC3(Py_None);
	return Py_None;
}