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
typedef  int /*<<< orphan*/  u64 ;
struct thread_stat {int dummy; } ;
struct perf_sample {int /*<<< orphan*/  time; int /*<<< orphan*/  tid; } ;
struct perf_evsel {int dummy; } ;
struct lock_stat {int discard; int /*<<< orphan*/  nr_contended; } ;
struct lock_seq_stat {int state; int /*<<< orphan*/  prev_event_time; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 size_t BROKEN_CONTENDED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  SEQ_STATE_ACQUIRED 133 
#define  SEQ_STATE_ACQUIRING 132 
#define  SEQ_STATE_CONTENDED 131 
#define  SEQ_STATE_READ_ACQUIRED 130 
#define  SEQ_STATE_RELEASED 129 
#define  SEQ_STATE_UNINITIALIZED 128 
 int /*<<< orphan*/ * bad_hist ; 
 int /*<<< orphan*/  FUNC1 (struct lock_seq_stat*) ; 
 struct lock_seq_stat* FUNC2 (struct thread_stat*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct lock_stat* FUNC4 (void*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (void**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_evsel*,struct perf_sample*,char*) ; 
 char* FUNC7 (struct perf_evsel*,struct perf_sample*,char*) ; 
 struct thread_stat* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct perf_evsel *evsel,
				       struct perf_sample *sample)
{
	void *addr;
	struct lock_stat *ls;
	struct thread_stat *ts;
	struct lock_seq_stat *seq;
	const char *name = FUNC7(evsel, sample, "name");
	u64 tmp = FUNC6(evsel, sample, "lockdep_addr");

	FUNC5(&addr, &tmp, sizeof(void *));

	ls = FUNC4(addr, name);
	if (!ls)
		return -1;
	if (ls->discard)
		return 0;

	ts = FUNC8(sample->tid);
	if (!ts)
		return -1;

	seq = FUNC2(ts, addr);
	if (!seq)
		return -1;

	switch (seq->state) {
	case SEQ_STATE_UNINITIALIZED:
		/* orphan event, do nothing */
		return 0;
	case SEQ_STATE_ACQUIRING:
		break;
	case SEQ_STATE_RELEASED:
	case SEQ_STATE_ACQUIRED:
	case SEQ_STATE_READ_ACQUIRED:
	case SEQ_STATE_CONTENDED:
		/* broken lock sequence, discard it */
		ls->discard = 1;
		bad_hist[BROKEN_CONTENDED]++;
		FUNC3(&seq->list);
		FUNC1(seq);
		goto end;
		break;
	default:
		FUNC0("Unknown state of lock sequence found!\n");
		break;
	}

	seq->state = SEQ_STATE_CONTENDED;
	ls->nr_contended++;
	seq->prev_event_time = sample->time;
end:
	return 0;
}