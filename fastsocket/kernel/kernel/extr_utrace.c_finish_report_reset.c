
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_report {int action; scalar_t__ detaches; scalar_t__ spurious; } ;
struct utrace {int lock; } ;
struct task_struct {int dummy; } ;


 int UTRACE_RESUME ;
 int spin_lock (int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ utrace_reset (struct task_struct*,struct utrace*) ;

__attribute__((used)) static inline void finish_report_reset(struct task_struct *task,
           struct utrace *utrace,
           struct utrace_report *report)
{
 if (unlikely(report->spurious || report->detaches)) {
  spin_lock(&utrace->lock);
  if (utrace_reset(task, utrace))
   report->action = UTRACE_RESUME;
 }
}
