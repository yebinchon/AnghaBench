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
struct task_struct {int dummy; } ;
struct pmu {int dummy; } ;
struct perf_event_attr {int sample_period; int read_format; int sample_type; scalar_t__ task; scalar_t__ comm; scalar_t__ mmap_data; scalar_t__ mmap; scalar_t__ inherit; scalar_t__ sample_freq; scalar_t__ freq; scalar_t__ disabled; } ;
struct hw_perf_event {int sample_period; int last_period; int /*<<< orphan*/  period_left; } ;
struct perf_event {int cpu; int oncpu; int attach_state; struct perf_event_attr attr; struct perf_event* parent; scalar_t__ ns; struct hw_perf_event hw; int /*<<< orphan*/  state; void* overflow_handler_context; scalar_t__ overflow_handler; int /*<<< orphan*/  id; int /*<<< orphan*/ * pmu; struct perf_event* group_leader; int /*<<< orphan*/  refcount; int /*<<< orphan*/  mmap_mutex; int /*<<< orphan*/  pending; int /*<<< orphan*/  waitq; int /*<<< orphan*/  rb_entry; int /*<<< orphan*/  sibling_list; int /*<<< orphan*/  event_entry; int /*<<< orphan*/  group_entry; int /*<<< orphan*/  child_list; int /*<<< orphan*/  child_mutex; } ;
typedef  scalar_t__ perf_overflow_handler_t ;

/* Variables and functions */
 long EINVAL ; 
 long ENOMEM ; 
 struct perf_event* FUNC0 (long) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct pmu*) ; 
 int PERF_ATTACH_TASK ; 
 int /*<<< orphan*/  PERF_EVENT_STATE_INACTIVE ; 
 int /*<<< orphan*/  PERF_EVENT_STATE_OFF ; 
 int PERF_FORMAT_GROUP ; 
 int PERF_SAMPLE_CALLCHAIN ; 
 long FUNC3 (struct pmu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*) ; 
 long FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct perf_event*) ; 
 struct perf_event* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_comm_events ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  nr_mmap_events ; 
 int /*<<< orphan*/  nr_task_events ; 
 int /*<<< orphan*/  perf_event_id ; 
 struct pmu* FUNC16 (struct perf_event*) ; 
 int /*<<< orphan*/  perf_pending_event ; 
 int /*<<< orphan*/  perf_sched_events ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct perf_event *
FUNC19(struct perf_event_attr *attr, int cpu,
		 struct task_struct *task,
		 struct perf_event *group_leader,
		 struct perf_event *parent_event,
		 perf_overflow_handler_t overflow_handler,
		 void *context)
{
	struct pmu *pmu;
	struct perf_event *event;
	struct hw_perf_event *hwc;
	long err;

	if ((unsigned)cpu >= nr_cpu_ids) {
		if (!task || cpu != -1)
			return FUNC0(-EINVAL);
	}

	event = FUNC13(sizeof(*event), GFP_KERNEL);
	if (!event)
		return FUNC0(-ENOMEM);

	/*
	 * Single events are their own group leaders, with an
	 * empty sibling list:
	 */
	if (!group_leader)
		group_leader = event;

	FUNC15(&event->child_mutex);
	FUNC1(&event->child_list);

	FUNC1(&event->group_entry);
	FUNC1(&event->event_entry);
	FUNC1(&event->sibling_list);
	FUNC1(&event->rb_entry);

	FUNC11(&event->waitq);
	FUNC10(&event->pending, perf_pending_event);

	FUNC15(&event->mmap_mutex);

	FUNC6(&event->refcount, 1);
	event->cpu		= cpu;
	event->attr		= *attr;
	event->group_leader	= group_leader;
	event->pmu		= NULL;
	event->oncpu		= -1;

	event->parent		= parent_event;

	event->ns		= FUNC9(FUNC18(current));
	event->id		= FUNC4(&perf_event_id);

	event->state		= PERF_EVENT_STATE_INACTIVE;

	if (task)
		event->attach_state = PERF_ATTACH_TASK;

	if (!overflow_handler && parent_event) {
		overflow_handler = parent_event->overflow_handler;
		context = parent_event->overflow_handler_context;
	}

	event->overflow_handler	= overflow_handler;
	event->overflow_handler_context = context;

	if (attr->disabled)
		event->state = PERF_EVENT_STATE_OFF;

	pmu = NULL;

	hwc = &event->hw;
	hwc->sample_period = attr->sample_period;
	if (attr->freq && attr->sample_freq)
		hwc->sample_period = 1;
	hwc->last_period = hwc->sample_period;

	FUNC14(&hwc->period_left, hwc->sample_period);

	/*
	 * we currently do not support PERF_FORMAT_GROUP on inherited events
	 */
	if (attr->inherit && (attr->read_format & PERF_FORMAT_GROUP))
		goto done;

	pmu = FUNC16(event);

done:
	err = 0;
	if (!pmu)
		err = -EINVAL;
	else if (FUNC2(pmu))
		err = FUNC3(pmu);

	if (err) {
		if (event->ns)
			FUNC17(event->ns);
		FUNC12(event);
		return FUNC0(err);
	}

	if (!event->parent) {
		if (event->attach_state & PERF_ATTACH_TASK)
			FUNC5(&perf_sched_events);
		if (event->attr.mmap || event->attr.mmap_data)
			FUNC5(&nr_mmap_events);
		if (event->attr.comm)
			FUNC5(&nr_comm_events);
		if (event->attr.task)
			FUNC5(&nr_task_events);
		if (event->attr.sample_type & PERF_SAMPLE_CALLCHAIN) {
			err = FUNC8();
			if (err) {
				FUNC7(event);
				return FUNC0(err);
			}
		}
	}

	return event;
}