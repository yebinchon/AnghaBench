
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct perf_event {int ns; struct perf_event* parent; } ;


 int task_tgid_nr_ns (struct task_struct*,int ) ;

__attribute__((used)) static u32 perf_event_pid(struct perf_event *event, struct task_struct *p)
{



 if (event->parent)
  event = event->parent;

 return task_tgid_nr_ns(p, event->ns);
}
