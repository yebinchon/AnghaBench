
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pmu {int dummy; } ;
struct perf_event_attr {int sample_period; int read_format; int sample_type; scalar_t__ task; scalar_t__ comm; scalar_t__ mmap_data; scalar_t__ mmap; scalar_t__ inherit; scalar_t__ sample_freq; scalar_t__ freq; scalar_t__ disabled; } ;
struct hw_perf_event {int sample_period; int last_period; int period_left; } ;
struct perf_event {int cpu; int oncpu; int attach_state; struct perf_event_attr attr; struct perf_event* parent; scalar_t__ ns; struct hw_perf_event hw; int state; void* overflow_handler_context; scalar_t__ overflow_handler; int id; int * pmu; struct perf_event* group_leader; int refcount; int mmap_mutex; int pending; int waitq; int rb_entry; int sibling_list; int event_entry; int group_entry; int child_list; int child_mutex; } ;
typedef scalar_t__ perf_overflow_handler_t ;


 long EINVAL ;
 long ENOMEM ;
 struct perf_event* ERR_PTR (long) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct pmu*) ;
 int PERF_ATTACH_TASK ;
 int PERF_EVENT_STATE_INACTIVE ;
 int PERF_EVENT_STATE_OFF ;
 int PERF_FORMAT_GROUP ;
 int PERF_SAMPLE_CALLCHAIN ;
 long PTR_ERR (struct pmu*) ;
 int atomic64_inc_return (int *) ;
 int atomic_inc (int *) ;
 int atomic_long_set (int *,int) ;
 int current ;
 int free_event (struct perf_event*) ;
 long get_callchain_buffers () ;
 scalar_t__ get_pid_ns (int ) ;
 int init_irq_work (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct perf_event*) ;
 struct perf_event* kzalloc (int,int ) ;
 int local64_set (int *,int) ;
 int mutex_init (int *) ;
 int nr_comm_events ;
 unsigned int nr_cpu_ids ;
 int nr_mmap_events ;
 int nr_task_events ;
 int perf_event_id ;
 struct pmu* perf_init_event (struct perf_event*) ;
 int perf_pending_event ;
 int perf_sched_events ;
 int put_pid_ns (scalar_t__) ;
 int task_active_pid_ns (int ) ;

__attribute__((used)) static struct perf_event *
perf_event_alloc(struct perf_event_attr *attr, int cpu,
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
   return ERR_PTR(-EINVAL);
 }

 event = kzalloc(sizeof(*event), GFP_KERNEL);
 if (!event)
  return ERR_PTR(-ENOMEM);





 if (!group_leader)
  group_leader = event;

 mutex_init(&event->child_mutex);
 INIT_LIST_HEAD(&event->child_list);

 INIT_LIST_HEAD(&event->group_entry);
 INIT_LIST_HEAD(&event->event_entry);
 INIT_LIST_HEAD(&event->sibling_list);
 INIT_LIST_HEAD(&event->rb_entry);

 init_waitqueue_head(&event->waitq);
 init_irq_work(&event->pending, perf_pending_event);

 mutex_init(&event->mmap_mutex);

 atomic_long_set(&event->refcount, 1);
 event->cpu = cpu;
 event->attr = *attr;
 event->group_leader = group_leader;
 event->pmu = ((void*)0);
 event->oncpu = -1;

 event->parent = parent_event;

 event->ns = get_pid_ns(task_active_pid_ns(current));
 event->id = atomic64_inc_return(&perf_event_id);

 event->state = PERF_EVENT_STATE_INACTIVE;

 if (task)
  event->attach_state = PERF_ATTACH_TASK;

 if (!overflow_handler && parent_event) {
  overflow_handler = parent_event->overflow_handler;
  context = parent_event->overflow_handler_context;
 }

 event->overflow_handler = overflow_handler;
 event->overflow_handler_context = context;

 if (attr->disabled)
  event->state = PERF_EVENT_STATE_OFF;

 pmu = ((void*)0);

 hwc = &event->hw;
 hwc->sample_period = attr->sample_period;
 if (attr->freq && attr->sample_freq)
  hwc->sample_period = 1;
 hwc->last_period = hwc->sample_period;

 local64_set(&hwc->period_left, hwc->sample_period);




 if (attr->inherit && (attr->read_format & PERF_FORMAT_GROUP))
  goto done;

 pmu = perf_init_event(event);

done:
 err = 0;
 if (!pmu)
  err = -EINVAL;
 else if (IS_ERR(pmu))
  err = PTR_ERR(pmu);

 if (err) {
  if (event->ns)
   put_pid_ns(event->ns);
  kfree(event);
  return ERR_PTR(err);
 }

 if (!event->parent) {
  if (event->attach_state & PERF_ATTACH_TASK)
   atomic_inc(&perf_sched_events);
  if (event->attr.mmap || event->attr.mmap_data)
   atomic_inc(&nr_mmap_events);
  if (event->attr.comm)
   atomic_inc(&nr_comm_events);
  if (event->attr.task)
   atomic_inc(&nr_task_events);
  if (event->attr.sample_type & PERF_SAMPLE_CALLCHAIN) {
   err = get_callchain_buffers();
   if (err) {
    free_event(event);
    return ERR_PTR(err);
   }
  }
 }

 return event;
}
