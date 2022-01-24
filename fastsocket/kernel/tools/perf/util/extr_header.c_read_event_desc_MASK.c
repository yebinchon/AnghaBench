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
typedef  size_t u64 ;
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  sz ;
struct perf_header {scalar_t__ needs_swap; } ;
struct perf_evsel {size_t idx; int needs_swap; size_t ids; size_t* id; int /*<<< orphan*/  name; int /*<<< orphan*/  attr; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  nre ;
typedef  int /*<<< orphan*/  nr ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 void* FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct perf_header*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_evsel*) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 scalar_t__ FUNC9 (int,size_t*,int) ; 

__attribute__((used)) static struct perf_evsel *
FUNC10(struct perf_header *ph, int fd)
{
	struct perf_evsel *evsel, *events = NULL;
	u64 *id;
	void *buf = NULL;
	u32 nre, sz, nr, i, j;
	ssize_t ret;
	size_t msz;

	/* number of events */
	ret = FUNC9(fd, &nre, sizeof(nre));
	if (ret != (ssize_t)sizeof(nre))
		goto error;

	if (ph->needs_swap)
		nre = FUNC0(nre);

	ret = FUNC9(fd, &sz, sizeof(sz));
	if (ret != (ssize_t)sizeof(sz))
		goto error;

	if (ph->needs_swap)
		sz = FUNC0(sz);

	/* buffer to hold on file attr struct */
	buf = FUNC6(sz);
	if (!buf)
		goto error;

	/* the last event terminates with evsel->attr.size == 0: */
	events = FUNC2(nre + 1, sizeof(*events));
	if (!events)
		goto error;

	msz = sizeof(evsel->attr);
	if (sz < msz)
		msz = sz;

	for (i = 0, evsel = events; i < nre; evsel++, i++) {
		evsel->idx = i;

		/*
		 * must read entire on-file attr struct to
		 * sync up with layout.
		 */
		ret = FUNC9(fd, buf, sz);
		if (ret != (ssize_t)sz)
			goto error;

		if (ph->needs_swap)
			FUNC8(buf);

		FUNC7(&evsel->attr, buf, msz);

		ret = FUNC9(fd, &nr, sizeof(nr));
		if (ret != (ssize_t)sizeof(nr))
			goto error;

		if (ph->needs_swap) {
			nr = FUNC0(nr);
			evsel->needs_swap = true;
		}

		evsel->name = FUNC3(fd, ph);

		if (!nr)
			continue;

		id = FUNC2(nr, sizeof(*id));
		if (!id)
			goto error;
		evsel->ids = nr;
		evsel->id = id;

		for (j = 0 ; j < nr; j++) {
			ret = FUNC9(fd, id, sizeof(*id));
			if (ret != (ssize_t)sizeof(*id))
				goto error;
			if (ph->needs_swap)
				*id = FUNC1(*id);
			id++;
		}
	}
out:
	if (buf)
		FUNC4(buf);
	return events;
error:
	if (events)
		FUNC5(events);
	events = NULL;
	goto out;
}