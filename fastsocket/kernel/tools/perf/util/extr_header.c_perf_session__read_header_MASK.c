#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct perf_trace_event_type {int dummy; } ;
struct perf_header {int frozen; int /*<<< orphan*/  data_offset; scalar_t__ needs_swap; } ;
struct perf_session {int /*<<< orphan*/ * evlist; int /*<<< orphan*/  pevent; scalar_t__ fd_pipe; struct perf_header header; } ;
struct TYPE_7__ {int size; int /*<<< orphan*/  offset; } ;
struct TYPE_5__ {int size; int /*<<< orphan*/  offset; } ;
struct perf_file_header {int attr_size; TYPE_3__ event_types; TYPE_1__ attrs; } ;
struct TYPE_6__ {int size; int /*<<< orphan*/  offset; } ;
struct perf_file_attr {TYPE_2__ ids; int /*<<< orphan*/  attr; } ;
struct perf_evsel {scalar_t__ needs_swap; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  f_id ;
struct TYPE_8__ {int nr_events; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct perf_evsel*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct perf_evsel*,int,int) ; 
 struct perf_evsel* FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (struct perf_file_header*,struct perf_header*,int) ; 
 int /*<<< orphan*/  perf_file_section__process ; 
 scalar_t__ FUNC11 (struct perf_header*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct perf_header*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct perf_session*,int) ; 
 scalar_t__ FUNC14 (int,struct perf_header*,struct perf_file_attr*) ; 
 TYPE_4__ symbol_conf ; 
 int trace_event_count ; 
 int /*<<< orphan*/ * trace_events ; 

int FUNC15(struct perf_session *session, int fd)
{
	struct perf_header *header = &session->header;
	struct perf_file_header	f_header;
	struct perf_file_attr	f_attr;
	u64			f_id;
	int nr_attrs, nr_ids, i, j;

	session->evlist = FUNC6(NULL, NULL);
	if (session->evlist == NULL)
		return -ENOMEM;

	if (session->fd_pipe)
		return FUNC13(session, fd);

	if (FUNC10(&f_header, header, fd) < 0)
		return -EINVAL;

	nr_attrs = f_header.attrs.size / f_header.attr_size;
	FUNC0(fd, f_header.attrs.offset, SEEK_SET);

	for (i = 0; i < nr_attrs; i++) {
		struct perf_evsel *evsel;
		off_t tmp;

		if (FUNC14(fd, header, &f_attr) < 0)
			goto out_errno;

		if (header->needs_swap)
			FUNC2(&f_attr.attr);

		tmp = FUNC0(fd, 0, SEEK_CUR);
		evsel = FUNC9(&f_attr.attr, i);

		if (evsel == NULL)
			goto out_delete_evlist;

		evsel->needs_swap = header->needs_swap;
		/*
		 * Do it before so that if perf_evsel__alloc_id fails, this
		 * entry gets purged too at perf_evlist__delete().
		 */
		FUNC3(session->evlist, evsel);

		nr_ids = f_attr.ids.size / sizeof(u64);
		/*
		 * We don't have the cpu and thread maps on the header, so
		 * for allocating the perf_sample_id table we fake 1 cpu and
		 * hattr->ids threads.
		 */
		if (FUNC8(evsel, 1, nr_ids))
			goto out_delete_evlist;

		FUNC0(fd, f_attr.ids.offset, SEEK_SET);

		for (j = 0; j < nr_ids; j++) {
			if (FUNC11(header, fd, &f_id, sizeof(f_id)))
				goto out_errno;

			FUNC5(session->evlist, evsel, 0, j, f_id);
		}

		FUNC0(fd, tmp, SEEK_SET);
	}

	symbol_conf.nr_events = nr_attrs;

	if (f_header.event_types.size) {
		FUNC0(fd, f_header.event_types.offset, SEEK_SET);
		trace_events = FUNC1(f_header.event_types.size);
		if (trace_events == NULL)
			return -ENOMEM;
		if (FUNC11(header, fd, trace_events,
					     f_header.event_types.size))
			goto out_errno;
		trace_event_count =  f_header.event_types.size / sizeof(struct perf_trace_event_type);
	}

	FUNC12(header, fd, &session->pevent,
				      perf_file_section__process);

	FUNC0(fd, header->data_offset, SEEK_SET);

	if (FUNC7(session->evlist,
						   session->pevent))
		goto out_delete_evlist;

	header->frozen = 1;
	return 0;
out_errno:
	return -errno;

out_delete_evlist:
	FUNC4(session->evlist);
	session->evlist = NULL;
	return -ENOMEM;
}