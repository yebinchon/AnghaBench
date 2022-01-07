
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct task_desc {unsigned long nr_events; struct sched_atom** atoms; } ;
struct sched_atom {unsigned long nr; int timestamp; } ;


 int BUG_ON (int) ;
 struct sched_atom** realloc (struct sched_atom**,size_t) ;
 struct sched_atom* zalloc (int) ;

__attribute__((used)) static struct sched_atom *
get_new_event(struct task_desc *task, u64 timestamp)
{
 struct sched_atom *event = zalloc(sizeof(*event));
 unsigned long idx = task->nr_events;
 size_t size;

 event->timestamp = timestamp;
 event->nr = idx;

 task->nr_events++;
 size = sizeof(struct sched_atom *) * task->nr_events;
 task->atoms = realloc(task->atoms, size);
 BUG_ON(!task->atoms);

 task->atoms[idx] = event;

 return event;
}
