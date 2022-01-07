
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_event {int dummy; } ;


 int __perf_event_overflow (struct perf_event*,int,struct perf_sample_data*,struct pt_regs*) ;

int perf_event_overflow(struct perf_event *event,
     struct perf_sample_data *data,
     struct pt_regs *regs)
{
 return __perf_event_overflow(event, 1, data, regs);
}
